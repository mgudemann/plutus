-- | A dynamic built-in name test.

{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications    #-}

module DynamicBuiltins.Definition
    ( test_definition
    ) where

import           Language.PlutusCore
import           Language.PlutusCore.Constant
import           Language.PlutusCore.Constant.Dynamic
import           Language.PlutusCore.Generators.Interesting
import           Language.PlutusCore.MkPlc

import           Language.PlutusCore.StdLib.Data.Bool
import qualified Language.PlutusCore.StdLib.Data.Function   as Plc
import qualified Language.PlutusCore.StdLib.Data.List       as Plc

import           DynamicBuiltins.Common

import           Data.Either                                (isRight)
import           Data.Proxy
import           Hedgehog                                   hiding (Size, Var)
import qualified Hedgehog.Gen                               as Gen
import qualified Hedgehog.Range                             as Range
import           Test.Tasty
import           Test.Tasty.Hedgehog
import           Test.Tasty.HUnit

dynamicFactorialName :: DynamicBuiltinName
dynamicFactorialName = DynamicBuiltinName "factorial"

dynamicFactorialMeaning :: DynamicBuiltinNameMeaning
dynamicFactorialMeaning = DynamicBuiltinNameMeaning sch fac where
    sch = Proxy @Integer `TypeSchemeArrow` TypeSchemeResult Proxy
    fac n = product [1..n]

dynamicFactorialDefinition :: DynamicBuiltinNameDefinition
dynamicFactorialDefinition =
    DynamicBuiltinNameDefinition dynamicFactorialName dynamicFactorialMeaning

dynamicFactorial :: Term tyname name ()
dynamicFactorial = dynamicBuiltinNameAsTerm dynamicFactorialName

-- | Check that the dynamic factorial defined above computes to the same thing as
-- a factorial defined in PLC itself.
test_dynamicFactorial :: TestTree
test_dynamicFactorial =
    testCase "dynamicFactorial" $ do
        let env = insertDynamicBuiltinNameDefinition dynamicFactorialDefinition mempty
            lhs = typecheckEvaluateCek env $ Apply () dynamicFactorial (makeIntConstant 10)
            rhs = typecheckEvaluateCek mempty $ Apply () factorial (makeIntConstant 10)
        assertBool "type checks" $ isRight lhs
        lhs @?= rhs

dynamicConstName :: DynamicBuiltinName
dynamicConstName = DynamicBuiltinName "const"

dynamicConstMeaning :: DynamicBuiltinNameMeaning
dynamicConstMeaning = DynamicBuiltinNameMeaning sch Prelude.const where
    sch =
        TypeSchemeAllType @"a" @0 Proxy $ \a ->
        TypeSchemeAllType @"b" @1 Proxy $ \b ->
            a `TypeSchemeArrow` b `TypeSchemeArrow` TypeSchemeResult a

dynamicConstDefinition :: DynamicBuiltinNameDefinition
dynamicConstDefinition =
    DynamicBuiltinNameDefinition dynamicConstName dynamicConstMeaning

dynamicConst :: Term tyname name ()
dynamicConst = dynamicBuiltinNameAsTerm dynamicConstName

-- | Check that the dynamic const defined above computes to the same thing as
-- a const defined in PLC itself.
test_dynamicConst :: TestTree
test_dynamicConst =
    testProperty "dynamicConst" . property $ do
        c <- forAll Gen.unicode
        b <- forAll Gen.bool
        let tC = makeKnown c
            tB = makeKnown b
            char = toTypeAst @Char Proxy
            runConst con = mkIterApp () (mkIterInst () con [char, bool]) [tC, tB]
            env = insertDynamicBuiltinNameDefinition dynamicConstDefinition mempty
            lhs = typecheckReadKnownCek env $ runConst dynamicConst
            rhs = typecheckReadKnownCek mempty $ runConst Plc.const
        lhs === Right (Right (EvaluationSuccess c))
        lhs === rhs

dynamicReverseName :: DynamicBuiltinName
dynamicReverseName = DynamicBuiltinName "reverse"

dynamicReverseMeaning :: DynamicBuiltinNameMeaning
dynamicReverseMeaning = DynamicBuiltinNameMeaning sch (PlcList . Prelude.reverse . unPlcList) where
    sch =
        TypeSchemeAllType @"a" @0 Proxy $ \(_ :: Proxy a) ->
            Proxy @(PlcList a) `TypeSchemeArrow` TypeSchemeResult (Proxy @(PlcList a))

dynamicReverseDefinition :: DynamicBuiltinNameDefinition
dynamicReverseDefinition =
    DynamicBuiltinNameDefinition dynamicReverseName dynamicReverseMeaning

dynamicReverse :: Term tyname name ()
dynamicReverse = dynamicBuiltinNameAsTerm dynamicReverseName

-- | Check that the dynamic reverse defined above computes to the same thing as
-- a reverse defined in PLC itself.
test_dynamicReverse :: TestTree
test_dynamicReverse =
    testProperty "dynamicReverse" . property $ do
        is <- forAll . Gen.list (Range.linear 0 20) $ Gen.int (Range.linear 0 1000)
        let tIs = makeKnown $ PlcList is
            int = toTypeAst @Int Proxy
            runReverse rev = Apply () (TyInst () rev int) tIs
            env = insertDynamicBuiltinNameDefinition dynamicReverseDefinition mempty
            lhs = typecheckReadKnownCek env $ runReverse dynamicReverse
            rhs = typecheckReadKnownCek mempty $ runReverse Plc.reverse
        lhs === Right (Right (EvaluationSuccess . PlcList $ Prelude.reverse is))
        lhs === rhs

test_definition :: TestTree
test_definition =
    testGroup "definition"
        [ test_dynamicFactorial
        , test_dynamicConst
        , test_dynamicReverse
        ]
