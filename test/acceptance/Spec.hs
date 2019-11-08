import Test.Hspec

import Spec.TestBytes

acceptance :: Spec
acceptance =
    testBytes

main :: IO ()
main = hspec $ describe "running acceptance tests" acceptance
