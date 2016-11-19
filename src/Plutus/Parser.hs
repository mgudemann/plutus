{-# OPTIONS -Wall #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}





-- | This module defines how to parser a program in Plutus. This module
-- uses BNF with some common regular expression symbols to represent grammars
-- in docs. Additionally, a backslash is used to represent subtraction of a
-- string from the rule. For example, @<foo>\"X"@ means any @<foo>@ except the
-- string @"X"@. Also, we use the form @X $ Y@ to mean @(X (Y X)*)?@, and
-- @X $1 Y@ to mean @X (Y X)*@, by analogy to `sepBy` and `sepBy1` in Parsec.
-- We use the form @x=X@ to mean that @x@ is the parse tree for the @X@ part,
-- and we allow symbols to have parameters in parentheses, as in @<foo(x)>@.
-- Finally, we also use @X >>=? Y@ to mean @X Y?@. While the latter is shorter,
-- the former coheres better with the meaning in Haskell where the @Y@ parser
-- takes the result of the @X@ parser as an argument.

module Plutus.Parser where

import Utils.ABT
import Utils.SuffixParser
import Utils.Vars
import Plutus.ConSig
import Plutus.Term
import Plutus.Type
import Plutus.Program

import Control.Monad (guard)
import Data.List (foldl')
import Text.Parsec
import qualified Text.Parsec.Token as Token





languageDef :: Token.LanguageDef st
languageDef = Token.LanguageDef
                { Token.commentStart = "{-"
                , Token.commentEnd = "-}"
                , Token.commentLine = "--"
                , Token.nestedComments = True
                , Token.identStart = letter <|> char '_'
                , Token.identLetter = alphaNum <|> char '_' <|> char '\''
                , Token.opStart = oneOf ""
                , Token.opLetter = oneOf ""
                , Token.reservedNames =
                    ["data","let","in","case","of","success","failure","do"
                    ,"forall","Comp"]
                , Token.reservedOpNames = ["|","->","\\",":","=","<-",";",".","!"]
                , Token.caseSensitive = True
                }

tokenParser :: Token.TokenParser st
tokenParser = Token.makeTokenParser languageDef

identifier :: Parsec String u String
identifier = Token.identifier tokenParser

reserved :: String -> Parsec String u ()
reserved = Token.reserved tokenParser

reservedOp :: String -> Parsec String u ()
reservedOp = Token.reservedOp tokenParser

parens :: Parsec String u a -> Parsec String u a
parens = Token.parens tokenParser

braces :: Parsec String u a -> Parsec String u a
braces = Token.braces tokenParser

symbol :: String -> Parsec String u String
symbol = Token.symbol tokenParser

whiteSpace :: Parsec String u ()
whiteSpace = Token.whiteSpace tokenParser





-- Parsers for identifiers

varName :: Parsec String u String
varName =
  do _ <- lookAhead (lower <|> char '_')
     identifier

decName :: Parsec String u String
decName =
  do _ <- lookAhead upper
     identifier





-- * Type parsers

-- | The parser 'datatype' captures the grammar for data types as defined by
--
-- @
--    ; syntactic constructs
--    <datatype> ::= <forallType>
--                 | (<parenType> | <compType> | <typeCon> | <typeVar>)
--                     >>=? <functionSuffix>
--    <parenType> ::= "(" <datatype> ")"
--    <compType> ::= "Comp" <tyConArg>
--    <typeCon> ::= <decName> <tyConArg>*
--    <funtionSuffix> ::= "->" <funRight>
--    <forallType> ::= "forall" <typeVar> "." <forallBody>
--    
--    ; syntactic roles
--    <funRight> ::= <datatype>
--    <forallBody> ::= <datatype>
--    <tyConArg> ::= <parenType> | <noArgTyCon> | <typeVar>
-- @

datatype :: Parsec String u Type
datatype =
      forallType
  <|> (compType <|> typeCon <|> parenType <|> typeVar)
        >>=? functionSuffix

parenType :: Parsec String u Type
parenType = parens datatype

noArgTypeCon :: Parsec String u Type
noArgTypeCon =
  do c <- decName
     return $ tyConH c []

compType :: Parsec String u Type
compType = do
  try (reserved "Comp")
  a <- tyConArg
  return $ compH a

typeCon :: Parsec String u Type
typeCon = tyConH <$> decName <*> many tyConArg

typeVar :: Parsec String u Type
typeVar =
  do x <- varName
     guard (x /= "_")
     return $ Var (Free (FreeVar x))

forallType :: Parsec String u Type
forallType =
  do reserved "forall"
     xs <- many1 $ do
             x <- varName
             guard (x /= "_")
             return x
     reservedOp "."
     b <- forallBody
     return $ helperFold forallH xs b

functionSuffix :: Type -> Parsec String u Type
functionSuffix arg =
  do try $ reservedOp "->"
     ret <- funRight
     return $ funH arg ret
    
tyConArg :: Parsec String u Type
tyConArg =
      parenType
  <|> noArgTypeCon
  <|> typeVar

funRight :: Parsec String u Type
funRight = datatype

forallBody :: Parsec String u Type
forallBody = datatype





-- * Term parsers

-- | The parser 'term' handles parsing terms as defined by the grammar
--
-- @
--    ; syntactic constructs
--    <term> ::= <letExp>
--             | <lambda>
--             | <caseExp>
--             | (<conData> | <success> | <failure> | <builtin>)
--                 >>=? <annotationSuffix>
--             | (<parenTerm> | <variable>)
--                 >>=? <applicationSuffix> >>=? <annotationSuffix>
--    <annotationSuffix> ::= ":" <datatype>
--    <applicationSuffix> ::= <appArg>+
--    <parenTerm> ::= "(" <term> ")"
--    <variable> ::= <varName>\"_"
--    <letExp> ::= "let" "{" <letDecl>* "}" "in" <letBody>
--    <letDecl> ::= n@<varName> ":" <type> "{" <letClause(n)>* "}"
--    <letClause(n)> ::= n <pattern>* "=" <letClauseBody>
--    <lambda> ::= "\\" <varName>+ "->" <lamBody>
--    <noArgConData> ::= <decName>
--    <conData> ::= <decName> <conArg>*
--    <varPattern> ::= <varName>
--    <noArgConPattern> ::= <decName>
--    <conPattern> ::= <decName> <conPatternArg>*
--    <parenPattern> ::= "(" <pattern> ")"
--    <pattern> ::= <parenPattern> | <conPattern> | <varPattern>
--    <clause> ::= (<pattern> $1 "|") "->" <term>
--    <caseExp> ::= "case" (<caseArg> $1 "|") "of" "{" (<clause> $ ";") "}"
--    <success> ::= "success" <conArg>
--    <failure> ::= "failure"
--    <builtin> ::= "!" <varName> <appArg>*
--
--    ; syntactic roles
--    <letBody> ::= <term>
--    <letDefClauseBody> ::= <term>
--    <lamBody> ::= <term>
--    <appArg> ::= <parenTerm> | <noArgConData> | <variable>
--    <conArg> ::= <parenTerm> | <noArgConData> | <variable>
--    <caseArg> ::= <term>
--    <conPatternArg> ::= <parenPattern> | <noArgConPattern> | <varPattern>
-- @


term :: Parsec String u Term
term =
      letExp
  <|> lambda
  <|> caseExp
  <|> (conData <|> success <|> failure <|> builtin)
        >>=? annotationSuffix
  <|> (parenTerm <|> variable)
        >>=? applicationSuffix >>=? annotationSuffix

parenTerm :: Parsec String u Term
parenTerm = parens term

variable :: Parsec String u Term
variable =
  do x <- varName
     guard (x /= "_")
     return $ Var (Free (FreeVar x))

annotationSuffix :: Term -> Parsec String u Term
annotationSuffix m =
  do try $ reservedOp ":"
     t <- datatype
     return $ annH m t

applicationSuffix :: Term -> Parsec String u Term
applicationSuffix f =
  do as <- try $ many1 appArg
     return $ foldl' appH f as

letExp :: Parsec String u Term
letExp =
  do try $ reserved "let"
     letClauses <- braces (letDecl `sepBy` reservedOp ";")
     reserved "in"
     b <- letBody
     return $ letH letClauses b

letDecl :: Parsec String u LetDecl
letDecl =
  do n <- varName
     reserved ":"
     a <- datatype
     letClauses <- braces (letClause n `sepBy1` reservedOp ";")
     return $ LetDeclClauses n a letClauses

letClause :: String -> Parsec String u LetClause
letClause n =
  do _ <- symbol n
     ps <- many letClausePattern
     reservedOp "="
     b <- term
     let freshenedPs =
           dummiesToFreshNames (freeVarNames b) ps
         xs = freeVarNames =<< freshenedPs
     return $ letClauseH xs freshenedPs b

lambda :: Parsec String u Term
lambda =
  do try $ reservedOp "\\"
     xs <- many1 varName
     reservedOp "->"
     b <- lamBody
     let xsFreshDummies =
           map unBNSString
               (dummiesToFreshNames
                 (freeVarNames b)
                 (map BNSString xs))
     return $ helperFold lamH xsFreshDummies b

noArgConData :: Parsec String u Term
noArgConData =
  do c <- decName
     return $ conH c []

conData :: Parsec String u Term
conData =
  do c <- decName
     as <- many conArg
     return $ conH c as

varPattern :: Parsec String u Pattern
varPattern =
  do x <- varName
     return $ Var (Free (FreeVar x))

noArgConPattern :: Parsec String u Pattern
noArgConPattern =
  do c <- decName
     return $ conPatH c []

conPattern :: Parsec String u Pattern
conPattern =
  do c <- decName
     ps <- many conPatternArg
     return $ conPatH c ps

parenPattern :: Parsec String u Pattern
parenPattern = parens pattern

pattern :: Parsec String u Pattern
pattern =
      parenPattern
  <|> conPattern
  <|> varPattern

clause :: Parsec String u Clause
clause =
  do ps <- try $ do
       ps <- pattern `sepBy` reservedOp "|"
       reservedOp "->"
       return ps
     b <- term
     let freshenedPs = dummiesToFreshNames (freeVarNames b) ps
         xs = freeVarNames =<< freshenedPs
     return $ clauseH xs freshenedPs b

caseExp :: Parsec String u Term
caseExp =
  do try $ reserved "case"
     m <- caseArg `sepBy` reservedOp "|"
     reserved "of"
     cs <- braces (clause `sepBy` reservedOp ";")
     return $ caseH m cs

failure :: Parsec String u Term
failure =
  do reserved "failure"
     return $ failureH

success :: Parsec String u Term
success =
  do try $ reserved "success"
     a <- conArg
     return $ successH a

builtin :: Parsec String u Term
builtin =
  do try $ reservedOp "!"
     n <- varName
     as <- many appArg
     return $ builtinH n as

letClausePattern :: Parsec String u Pattern
letClausePattern =
      parenPattern
  <|> noArgConPattern
  <|> varPattern

letBody :: Parsec String u Term
letBody = term

lamBody :: Parsec String u Term
lamBody = term

appArg :: Parsec String u Term
appArg = parenTerm <|> noArgConData <|> variable

conArg :: Parsec String u Term
conArg = parenTerm <|> noArgConData <|> variable

caseArg :: Parsec String u Term
caseArg = term

conPatternArg :: Parsec String u Pattern
conPatternArg = parenPattern <|> noArgConPattern <|> varPattern




parseTerm :: String -> Either String Term
parseTerm str =
  case parse (whiteSpace *> term <* eof) "(unknown)" str of
    Left e -> Left (show e)
    Right p -> Right p





-- Program parsers

program :: Parsec String u Program
program = Program <$> many statement

statement :: Parsec String u Statement
statement = TmDecl <$> termDecl
        <|> TyDecl <$> typeDecl

whereTermDecl :: Parsec String u TermDeclaration
whereTermDecl =
  do x <- try $ do
       x <- varName
       reservedOp ":"
       return x
     t <- datatype
     preclauses <- braces (patternMatchClause x `sepBy1` reservedOp ";")
     return $ WhereDeclaration x t preclauses

patternMatchClause :: String -> Parsec String u ([Pattern],[String],Term)
patternMatchClause x =
  do _ <- symbol x
     ps <- many patternMatchPattern
     reservedOp "="
     b <- term
     let freshenedPs =
           dummiesToFreshNames (freeVarNames b) ps
         xs = freeVarNames =<< freshenedPs
     return (freshenedPs,xs,b)

patternMatchPattern :: Parsec String u Pattern
patternMatchPattern =
      parenPattern
  <|> noArgConPattern
  <|> varPattern

termDecl :: Parsec String u TermDeclaration
termDecl = whereTermDecl

alternative :: Parsec String u (String,[Type])
alternative =
  do c <- decName
     as <- many alternativeArg
     return (c,as)

alternativeArg :: Parsec String u Type
alternativeArg = parenType <|> typeCon <|> typeVar

typeDecl :: Parsec String u TypeDeclaration
typeDecl =
  do reserved "data"
     tycon <- decName
     params <- many varName
     reservedOp "="
     alts <- braces (alternative `sepBy` reservedOp "|")
     return $ TypeDeclaration
                tycon
                params
                [ ( c
                  , conSigH params
                            as
                            (tyConH tycon
                                    (map (Var . Free . FreeVar) params)))
                | (c,as) <- alts
                ]





-- | A convenience function that will parse or return the parse error string.

parseProgram :: String -> Either String Program
parseProgram str =
  case parse (whiteSpace *> program <* eof) "(unknown)" str of
    Left e -> Left (show e)
    Right p -> Right p