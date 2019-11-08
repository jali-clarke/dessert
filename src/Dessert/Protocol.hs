{-# LANGUAGE
    DataKinds,
    KindSignatures,
    TypeFamilies
#-}

module Dessert.Protocol (
    DessertProtocol(..),
    Deserializing,
    Serializing
) where

import qualified Data.ByteString.Lazy as B
import GHC.TypeNats

import Dessert.Builder

data DessertProtocol = Bytes Nat

type family Deserializing (protocol :: DessertProtocol) (output :: *) :: * where
    Deserializing (Bytes n) a = B.ByteString -> Either String a

type family Serializing (input :: *) (protocol :: DessertProtocol) :: * where
    Serializing a (Bytes n) = a -> Builder n