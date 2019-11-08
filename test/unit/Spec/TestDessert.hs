module Spec.TestDessert (
    testDessert
) where

import Test.Hspec

import Spec.TestDessert.TestSerialize
import Spec.TestDessert.TestBuilder

testDessert :: Spec
testDessert =
    describe "Dessert" $ do
        testSerialize
        testBuilder