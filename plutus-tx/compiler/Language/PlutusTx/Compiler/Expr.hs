{-# LANGUAGE ConstraintKinds   #-}
{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}

-- | Functions for compiling GHC Core expressions into Plutus Core terms.
module Language.PlutusTx.Compiler.Expr (convExpr, convExprWithDefs, convDataConRef) where

import           PlutusPrelude                          (bsToStr)

import           Language.PlutusTx.Compiler.Binders
import           Language.PlutusTx.Compiler.Builtins
import           Language.PlutusTx.Compiler.Error
import           Language.PlutusTx.Compiler.Laziness
import           Language.PlutusTx.Compiler.Names
import           Language.PlutusTx.Compiler.Primitives
import           Language.PlutusTx.Compiler.Type
import           Language.PlutusTx.Compiler.Types
import           Language.PlutusTx.Compiler.Utils
import           Language.PlutusTx.PIRTypes

import qualified FV                                     as GHC
import qualified GhcPlugins                             as GHC
import qualified MkId                                   as GHC
import qualified PrelNames                              as GHC

import qualified Language.PlutusIR                      as PIR
import qualified Language.PlutusIR.Compiler.Definitions as PIR
import qualified Language.PlutusIR.MkPir                as PIR
import qualified Language.PlutusIR.Value                as PIR

import qualified Language.PlutusCore                    as PLC
import qualified Language.PlutusCore.Constant           as PLC

import           Control.Monad.Reader

import qualified Data.ByteString.Lazy                   as BSL
import           Data.List                              (elem, elemIndex)
import qualified Data.List.NonEmpty                     as NE
import qualified Data.Set                               as Set
import           Data.Traversable

{- Note [System FC and System FW]
Haskell uses system FC, which includes type equalities and coercions.

PLC does *not* have coercions in particular. However, PLC also does not have a nominal
type system - everything is constructed via operators on base types, so we have no
need for coercions to convert between newtypes and datatypes.

So we mostly ignore coercions. The one place that I know of where the mismatch hurts
us is that GHC uses the `Any` type (coercible to and from anything) for unconstrained
function variables, e.g. in polymorphic lambdas. This is annoying for us, since we
really want the version with explicit type abstraction. I don't currently have a fix
for this.
-}


-- Literals and primitives

{- Note [Literals]
GHC's literals and primitives are a bit of a pain, since they not only have a Literal
containing the actual data, but are wrapped in special functions (often ending in the magic #).

This is a pain to recognize.
-}

{- Note [unpackFoldrCString#]
This function is introduced by rewrite rules, and usually eliminated by them in concert with `build`.

However, since we often mark things as INLINABLE, we get pre-optimization Core where only the
first transformation has fired. So we need to do something with the function. (Note: this might
be easier if we used `-fexpose-all-unfoldings` instead.)

- We can't easily turn it into a normal fold expression, since we'd need to make a lambda and
  we're not in 'CoreM' so we can't make fresh names.
- We can't easily translate it to a builtin, since we don't support higher-order functions.

So we use a horrible hack and match on `build . unpackFoldrCString#` to "undo" the original rewrite
rule.
-}

convLiteral :: Converting m => GHC.Literal -> m PIRTerm
convLiteral = \case
    -- Just accept any kind of number literal, we'll complain about types we don't support elsewhere
    (GHC.LitNumber _ i _) -> pure $ PIR.Constant () $ PLC.BuiltinInt () i
    GHC.MachStr bs     ->
        -- Convert the bytestring into a core expression representing the list
        -- of characters, then compile that!
        -- Note that we do *not* convert this into a PLC string, but rather a list of characters,
        -- since that is what other Haskell code will expect.
        let
            str = bsToStr (BSL.fromStrict bs)
            charExprs = fmap GHC.mkCharExpr str
            listExpr = GHC.mkListExpr GHC.charTy charExprs
        in convExpr listExpr
    GHC.MachChar c     -> pure $ PIR.embed $ PLC.makeKnown c
    GHC.MachFloat _    -> throwPlain $ UnsupportedError "Literal float"
    GHC.MachDouble _   -> throwPlain $ UnsupportedError "Literal double"
    GHC.MachLabel {}   -> throwPlain $ UnsupportedError "Literal label"
    GHC.MachNullAddr   -> throwPlain $ UnsupportedError "Literal null"

-- | Convert a reference to a data constructor, i.e. a call to it.
convDataConRef :: Converting m => GHC.DataCon -> m PIRTerm
convDataConRef dc =
    let
        tc = GHC.dataConTyCon dc
    in do
        dcs <- getDataCons tc
        constrs <- getConstructors tc

        -- TODO: this is inelegant
        index <- case elemIndex dc dcs of
            Just i  -> pure i
            Nothing -> throwPlain $ CompilationError "Data constructor not in the type constructor's list of constructors"

        pure $ constrs !! index

isErrorId :: GHC.Id -> Bool
isErrorId ghcId = ghcId `elem` GHC.errorIds

{- Note [GHC runtime errors]
GHC has a number of runtime errors for things like pattern matching failures and so on.

We just translate these directly into calls to error, throwing away any other information.

Annoyingly, unlike void, we can't mangle the type uniformly to make sure we are safe
with respect to the value restriction (see note [Value restriction]), so we just have to force
our error call and hope that it doesn't end up somewhere it shouldn't.
-}

{- Note [At patterns]
GHC handles @-patterns by adding a variable to each case expression representing the scrutinee
of the expression.

We handle this by simply let-binding that variable outside our generated case. In the instances
where it's not used, the PIR dead-binding pass will remove it.
-}

{- Note [Coercions and newtypes]
GHC is keen to put coercions in, they're usually great for it. However, this is a pain for us, since
you can have all kinds of fancy coercions, like coercions between functions where some of the arguments
are newtypes. We don't need to support all the stuff you can do with coercions, but we do want to
support newtypes.

A previous approach was to inspect coercions to try and work out if they were coercions between a newtype
and its underlying type, and if so manually construct/deconstruct it. This had a number of disadvantages.
- It only worked on very specific cases (e.g. if the simplifier gets loose it can make more complicated
  coercions that we can't obviously deconstruct without much more work)
- It wasn't future-proof. It's likely that GHC will move in the direction of getting rid of the structure
  of coercions (see https://gitlab.haskell.org//ghc/ghc/issues/8095#note_108189), so this approach might
  well stop working in the future.

So we would like to "believe" coercions, for at least some cases. We can
do this by always treating a newtype as it's underlying type. Except - this doesn't work for recursive
newtypes (we loop!). GHC doesn't have this problem because it treats the underlying type and the
newtype as separate types that happen to have the same representation. We don't have a separate representation
so we don't have that option.

So for the moment we:
- Treat newtypes as their underlying type.
- Blackhole newtypes when we start converting them so we can bail if they're recursive.
- Always believe coercions (i.e. just treat casts as the identity).

The final point could get us into trouble with fancier uses of coercions (since we will just accept them),
but those should fail when we typecheck the PLC. And we explicitly say we don't support such things.
-}

{- Note [Unfoldings]
GHC stores the current RHS of bindings in "unfoldings". These are used for inlining, but
also generally provide the compiler's view of the RHS of a binding. They are usually available
for other modules in the same package, and can be available cross-package if GHC decides it's
a good idea or if the binding is marked INLINABLE.

We use unfoldings to get the definitions of non-locally bound names. We then hoist these into
definitions using PIR's support for definitions. This allows a relatively direct form of code
reuse - provided that the code you are reusing has unfoldings! In practice this means you may
need to scatter some INLINABLE pragmas around, but we may be able to improve this in future,
see e.g. https://gitlab.haskell.org/ghc/ghc/issues/10871.

(Since unfoldings are updated as the compiler progresses, unfoldings for bindings in other
modules are typically fully-optimized. The exception is the unfoldings for INLINABLE bindings,
which get the *pre* optimization RHS. This is so that rewrite rules can fire. In practice, this
means that we need to be okay getting either.)
-}

{- Note [Lazy let-bindings]
Haskell is a lazy language, PLC is a strict language. One place that can show up is in let-bindings.
In particular, a let-binding where the RHS is not value may behave differently.
e.g.
```
let e = error in if x then e else ()
```
In Haskell this is conditionally error, in PLC it is unconditionally error.

These sorts of thing can be written by the user, or generated by GHC.

We solve this by compiling such let-bindings *lazily*. That means we delay the body
and force all uses of it. This is a bit overenthusiastic, as it will add overhead to
effect-free let-bindings, but I don't know of an easy way to tell if an expression is pure.

The strategy is awkward because PIR doesn't know about lazy let bindings, so we have to keep track
of the "lazy names" and treat them specially. Probably we should push some support into PIR
which would make this much easier.

It's especially awkward because we also need to change the type of the bound variable from `T`
to `() -> T`. This is awkward at the best of times, but especially bad for recursive values,
where we don't know if it's a value until after we've compiled it, but we need to put in a
temporary variable reference before we start, which will have the wrong type. We just ban
such things - this will work if we do it as part of PIR.
-}

hoistExpr :: Converting m => GHC.Var -> GHC.CoreExpr -> m PIRTerm
hoistExpr var t =
    let
        name = GHC.getName var
    in withContextM 1 (sdToTxt $ "Converting definition of:" GHC.<+> GHC.ppr var) $ do
        maybeDef <- PIR.lookupTerm () name
        case maybeDef of
            Just term -> do
                -- See Note [Lazy let-bindings]
                lazy <- isLazyName name
                maybeForce lazy term
            Nothing -> do
                let fvs = GHC.getName <$> (GHC.fvVarList $ GHC.expr_fvs t)
                let tcs = GHC.getName <$> (GHC.nonDetEltsUniqSet $ tyConsOfExpr t)
                let allFvs = Set.fromList $ fvs ++ tcs
                let recursive = Set.member name allFvs

                var' <- convVarFresh var
                -- See Note [Occurrences of recursive names]
                PIR.defineTerm name (PIR.Def var' (PIR.mkVar () var')) mempty

                t' <- convExpr t

                -- See Note [Lazy let-bindings]
                let lazy = not $ PIR.isTermValue t'
                when (recursive && lazy) $ throwSd UnsupportedError $ "Recursive let-binding of non-value" GHC.<+> GHC.ppr name
                rhs <- maybeDelay lazy t'
                var'' <- maybeDelayVar lazy var'
                -- if we delayed, we now have a dependency on unit
                let deps = if lazy then Set.insert (GHC.getName GHC.unitTyCon) allFvs else allFvs
                when lazy $ markLazyName name

                PIR.defineTerm name (PIR.Def var'' rhs) deps
                maybeForce lazy $ PIR.mkVar () var''

-- Expressions

convExpr :: Converting m => GHC.CoreExpr -> m PIRTerm
convExpr e = withContextM 2 (sdToTxt $ "Converting expr:" GHC.<+> GHC.ppr e) $ do
    -- See Note [Scopes]
    ConvertingContext {ccScopes=stack} <- ask
    let top = NE.head stack
    case e of
        -- See Note [Literals]
        -- unpackCString# is just a wrapper around a literal
        GHC.Var n `GHC.App` arg | GHC.getName n == GHC.unpackCStringName -> convExpr arg
        -- See Note [unpackFoldrCString#]
        GHC.Var build `GHC.App` _ `GHC.App` GHC.Lam _ (GHC.Var unpack `GHC.App` _ `GHC.App` str)
            | GHC.getName build == GHC.buildName && GHC.getName unpack == GHC.unpackCStringFoldrName -> convExpr str
        -- C# is just a wrapper around a literal
        GHC.Var (GHC.idDetails -> GHC.DataConWorkId dc) `GHC.App` arg | dc == GHC.charDataCon -> convExpr arg
        -- void# - values of type void get represented as error, since they should be unreachable
        GHC.Var n | n == GHC.voidPrimId || n == GHC.voidArgId -> errorFunc
        -- See note [GHC runtime errors]
        -- <error func> <runtime rep> <overall type> <message>
        GHC.Var (isErrorId -> True) `GHC.App` _ `GHC.App` GHC.Type t `GHC.App` _ ->
            force =<< PIR.TyInst () <$> errorFunc <*> convType t
        -- <error func> <overall type> <message>
        GHC.Var (isErrorId -> True) `GHC.App` GHC.Type t `GHC.App` _ ->
            force =<< PIR.TyInst () <$> errorFunc <*> convType t
        -- locally bound vars
        GHC.Var n@(lookupName top . GHC.getName -> Just var) -> do
            -- See Note [Lazy let-bindings]
            lazy <- isLazyName (GHC.getName n)
            maybeForce lazy $ PIR.mkVar () var
        -- Special kinds of id
        GHC.Var (GHC.idDetails -> GHC.PrimOpId po) -> convPrimitiveOp po
        GHC.Var (GHC.idDetails -> GHC.DataConWorkId dc) -> convDataConRef dc
        -- See Note [Unfoldings]
        GHC.Var n@(GHC.realIdUnfolding -> GHC.CoreUnfolding{GHC.uf_tmpl=unfolding}) -> hoistExpr n unfolding
        GHC.Var n -> do
            -- Defined names, including builtin names
            maybeDef <- PIR.lookupTerm () (GHC.getName n)
            case maybeDef of
                -- See Note [Lazy let-bindings]
                Just term -> do
                    lazy <- isLazyName (GHC.getName n)
                    maybeForce lazy term
                Nothing -> throwSd FreeVariableError $
                    "Variable" GHC.<+> GHC.ppr n
                    GHC.$+$ (GHC.ppr $ GHC.idDetails n)
                    GHC.$+$ (GHC.ppr $ GHC.realIdUnfolding n)
        GHC.Lit lit -> convLiteral lit
        -- arg can be a type here, in which case it's a type instantiation
        l `GHC.App` GHC.Type t -> PIR.TyInst () <$> convExpr l <*> convType t
        -- otherwise it's a normal application
        l `GHC.App` arg -> PIR.Apply () <$> convExpr l <*> convExpr arg
        -- if we're biding a type variable it's a type abstraction
        GHC.Lam b@(GHC.isTyVar -> True) body -> mkTyAbsScoped b $ convExpr body
        -- othewise it's a normal lambda
        GHC.Lam b body -> mkLamAbsScoped b $ convExpr body
        GHC.Let (GHC.NonRec b arg) body -> do
            let name = GHC.getName b
            -- the binding is in scope for the body, but not for the arg
            arg' <- convExpr arg

            -- See Note [Lazy let-bindings]
            let lazy = not $ PIR.isTermValue arg'
            when lazy $ markLazyName name
            rhs <- maybeDelay lazy arg'

            withVarScoped b $ \v -> do
                -- See Note [Lazy let-bindings]
                v' <- maybeDelayVar lazy v
                let binds = [ PIR.TermBind () v' rhs ]
                body' <- convExpr body
                pure $ PIR.Let () PIR.NonRec binds body'
        GHC.Let (GHC.Rec bs) body ->
            withVarsScoped (fmap fst bs) $ \vars -> do
                -- the bindings are scope in both the body and the args
                -- TODO: this is a bit inelegant matching the vars back up
                binds <- for (zip vars bs) $ \(v, (b, arg)) -> do
                    arg' <- convExpr arg
                    -- See Note [Lazy let-bindings]
                    let lazy = not $ PIR.isTermValue arg'
                    when lazy $ throwSd UnsupportedError $ "Recursive let-binding of non-value" GHC.<+> GHC.ppr (GHC.getName b)
                    pure $ PIR.TermBind () v arg'
                body' <- convExpr body
                pure $ PIR.Let () PIR.Rec binds body'
        GHC.Case scrutinee b t alts -> do
            -- See Note [At patterns]
            scrutinee' <- convExpr scrutinee
            let scrutineeType = GHC.varType b
            -- This is something of a stop-gap error, we should use Integer everywhere
            when (scrutineeType `GHC.eqType` GHC.intTy) $ throwPlain $ UnsupportedError "Case on Int"

            -- the variable for the scrutinee is bound inside the cases, but not in the scrutinee expression itself
            withVarScoped b $ \v -> do
                (tc, argTys) <- case GHC.splitTyConApp_maybe scrutineeType of
                    Just (tc, argTys) -> pure (tc, argTys)
                    Nothing      -> throwPlain $ CompilationError "Scrutinee's type was not a type constructor application"
                dcs <- getDataCons tc

                -- See Note [Case expressions and laziness]
                isValueAlt <- forM dcs $ \dc ->
                    let (_, vars, body) = findAlt dc alts t
                    in if null vars then PIR.isTermValue <$> convExpr body else pure True
                let lazyCase = not $ and isValueAlt

                match <- getMatchInstantiated scrutineeType
                let matched = PIR.Apply () match scrutinee'

                -- See Note [Scott encoding of datatypes]
                -- we're going to delay the body, so the scrutinee needs to be instantiated the delayed type
                resultType <- convType t >>= maybeDelayType lazyCase
                let instantiated = PIR.TyInst () matched resultType

                branches <- forM dcs $ \dc ->
                    let alt = findAlt dc alts t
                        -- these are the instantiated type arguments, e.g. for the data constructor Just when
                        -- matching on Maybe Int it is [Int] (crucially, not [a])
                        instArgTys = GHC.dataConInstOrigArgTys dc argTys
                    in convAlt lazyCase instArgTys alt

                let applied = PIR.mkIterApp () instantiated branches
                -- See Note [Case expressions and laziness]
                mainCase <- maybeForce lazyCase applied

                -- See Note [At patterns]
                let binds = [ PIR.TermBind () v scrutinee' ]
                pure $ PIR.Let () PIR.NonRec binds mainCase
        -- we can use source notes to get a better context for the inner expression
        -- these are put in when you compile with -g
        GHC.Tick GHC.SourceNote{GHC.sourceSpan=src} body ->
            withContextM 1 (sdToTxt $ "Converting expr at:" GHC.<+> GHC.ppr src) $ convExpr body
        -- ignore other annotations
        GHC.Tick _ body -> convExpr body
        -- See Note [Coercions and newtypes]
        GHC.Cast body _ -> convExpr body
        GHC.Type _ -> throwPlain $ UnsupportedError "Types as standalone expressions"
        GHC.Coercion _ -> throwPlain $ UnsupportedError "Coercions as expressions"

convExprWithDefs :: Converting m => GHC.CoreExpr -> m PIRTerm
convExprWithDefs e = do
    defineBuiltinTypes
    defineBuiltinTerms
    convExpr e
