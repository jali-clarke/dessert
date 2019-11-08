module Spec.Bytes (
    testBytes
) where

import Test.Hspec

import Dessert
import Spec.Helpers

testBytes :: Spec
testBytes = do
    describe "Bytes combinator" $ do
        xit "should round trip the WrappedWord8 0" $
            let zero = WrappedWord8 0
            in deserialize (serialize zero) `shouldBe` Right zero