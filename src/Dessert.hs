{-# LANGUAGE
    AllowAmbiguousTypes,
    DataKinds,
    TypeFamilies
#-}

module Dessert (
    module Dessert.Protocol,

    Serializable(..),
    
    deserialize,
    serialize
) where

import qualified Data.ByteString.Lazy as B

import Dessert.Protocol

class Serializable a where
    type Protocol a :: DessertProtocol

    unpacking :: Deserializing (Protocol a) a
    packing :: Serializing (Protocol a) a

deserialize :: Serializable a => B.ByteString -> Either String a
deserialize = undefined

serialize :: Serializable a => a -> B.ByteString
serialize = undefined