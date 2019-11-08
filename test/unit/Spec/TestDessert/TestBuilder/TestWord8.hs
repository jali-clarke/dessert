module Spec.TestDessert.TestBuilder.TestWord8 (
    testWord8
) where

import qualified Data.ByteString.Lazy as B
import Test.Hspec

import Dessert.Builder

testWord8 :: Spec
testWord8 =
    describe "Dessert.Builder.word8" $ do
        it "produces singleton bytestring of 0 when run with word8 of 0" $ runBuilder (word8 0) `shouldBe` B.singleton 0