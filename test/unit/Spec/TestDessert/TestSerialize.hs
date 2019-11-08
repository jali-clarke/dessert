module Spec.TestDessert.TestSerialize (
    testSerialize
) where

import qualified Data.ByteString.Lazy as B
import Test.Hspec

import Dessert
import Spec.Helpers

testSerialize :: Spec
testSerialize =
    describe "Dessert.serialize" $ do
        it "serializes WrappedWord8 0 to bytestring singleton of 0" $ serialize (WrappedWord8 0) `shouldBe` (B.singleton 0)