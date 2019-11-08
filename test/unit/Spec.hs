import Test.Hspec

import Spec.Dessert.TestSerialize

unit :: Spec
unit =
    describe "unit tests" $ do
        describe "Dessert" $ do
            testSerialize

main :: IO ()
main = hspec unit
