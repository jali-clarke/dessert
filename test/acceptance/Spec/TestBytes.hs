module Spec.TestBytes (
    testBytes
) where

import Test.Hspec
import Spec.Helpers

import Dessert

testBytes :: Spec
testBytes = do
    describe "Bytes combinator" $ do
        xit "should round trip the WrappedWord8 0" $
            let zero = WrappedWord8 0
            in deserialize (serialize zero) `shouldBe` Right zero