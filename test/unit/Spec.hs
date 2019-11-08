import Test.Hspec


import Spec.TestDessert

unit :: Spec
unit = describe "unit tests" testDessert

main :: IO ()
main = hspec unit
