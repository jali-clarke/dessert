module Spec.TestDessert.TestBuilder (
    testBuilder
) where

import Test.Hspec

import Spec.TestDessert.TestBuilder.TestWord8

testBuilder :: Spec
testBuilder =
    describe "Dessert.Builder" $ do
        testWord8