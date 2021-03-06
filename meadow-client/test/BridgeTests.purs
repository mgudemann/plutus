module BridgeTests
       ( all
       ) where

import Control.Monad.Eff.Class (class MonadEff, liftEff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Control.Monad.Eff.Random (RANDOM)
import Data.Argonaut.Generic.Aeson (decodeJson)
import Data.Argonaut.Parser (jsonParser)
import Data.Either (Either(..))
import Data.Generic (class Generic)
import Language.Haskell.Interpreter (CompilationError)
import Node.Encoding (Encoding(UTF8))
import Node.FS (FS)
import API (RunResult)
import Node.FS.Sync as FS
import Prelude
import Test.Unit (TestSuite, Test, failure, success, suite, test)

all :: forall eff. TestSuite (exception :: EXCEPTION, fs :: FS, random :: RANDOM | eff)
all =
  suite "Bridge" do
    jsonHandling

jsonHandling :: forall eff. TestSuite (exception :: EXCEPTION, fs :: FS, random :: RANDOM | eff)
jsonHandling = do
    test "Json handling" do
      response1 :: Either String RunResult <- decodeFile "test/evaluation_response1.json"
      assertRight response1
      error1 :: Either String (Array CompilationError) <- decodeFile "test/evaluation_error1.json"
      assertRight error1

assertRight :: forall e a. Either String a -> Test e
assertRight (Left err) = failure err
assertRight (Right _) = success

decodeFile :: forall m a eff.
  MonadEff (fs :: FS, exception :: EXCEPTION | eff) m
  => Generic a
  => String
  -> m (Either String a)
decodeFile filename = do
  contents <- liftEff $ FS.readTextFile UTF8 filename
  pure (jsonParser contents >>= decodeJson)
