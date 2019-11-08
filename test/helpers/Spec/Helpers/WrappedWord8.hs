{-# LANGUAGE
    DataKinds,
    TypeFamilies
#-}

module Spec.Helpers.WrappedWord8 where

import qualified Data.ByteString.Builder as B
import qualified Data.ByteString.Lazy as B
import Data.Word (Word8)

import Dessert

newtype WrappedWord8 = WrappedWord8 Word8 deriving (Eq, Show)

instance Serializable WrappedWord8 where
    type Protocol WrappedWord8 = 'Bytes 1

    unpacking byte = pure $ WrappedWord8 (B.head byte)
    packing (WrappedWord8 byte) = B.word8 byte