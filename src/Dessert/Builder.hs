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

newtype Builder (n :: Nat) = Builder B.Builder

word8 :: Word8 -> Builder 1
word8 = Builder . B.word8