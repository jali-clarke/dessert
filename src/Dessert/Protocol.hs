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

type family Serializing (protocol :: DessertProtocol) (output :: *) :: * where
    Serializing (Bytes n) a = a -> Builder n