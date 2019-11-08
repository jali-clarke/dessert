import Test.Hspec

import Spec.Bytes

acceptance :: Spec
acceptance = describe "acceptance tests" testBytes

main :: IO ()
main = hspec acceptance
