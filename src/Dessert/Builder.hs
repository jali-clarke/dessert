{-# LANGUAGE
    DataKinds,
    KindSignatures
#-}

module Dessert.Builder (
    Builder,
    runBuilder,

    word8
) where

import qualified Data.ByteString.Builder as B
import qualified Data.ByteString.Lazy as B
import Data.Word (Word8)
import GHC.TypeNats

data Builder (n :: Nat)

runBuilder :: Builder 1 -> B.ByteString
runBuilder _ = B.singleton 0

word8 :: Word8 -> Builder 1
word8 = undefined