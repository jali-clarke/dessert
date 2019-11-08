{-# LANGUAGE
    DataKinds,
    KindSignatures
#-}

module Dessert.Builder (
    Builder,

    word8
) where

import qualified Data.ByteString.Builder as B
import Data.Word (Word8)
import GHC.TypeNats

data Builder (n :: Nat)

word8 :: Word8 -> Builder 1
word8 = undefined