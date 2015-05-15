{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE GADTs                 #-}
{-# LANGUAGE KindSignatures        #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TypeOperators         #-}

module Lib where

import           Data.Proxy
import           GHC.TypeLits

infixl 6 :∈

data MaskLabel ( l :: Symbol ) = Get

data Masked m a where
  Public :: a -> Masked '[] a
  Masked :: a -> MaskLabel l -> Masked '[l] a


z :: Masked '[] Integer
z = Public 3
y = Masked (3::Integer) (Get :: MaskLabel "M1")

-- Experiments with type level lists

type family n :∈ m :: Bool where
    a :∈ '[] = 'False
    a :∈ (a ': b) = 'True
    a :∈ (b ': c) = a :∈ c

type family n :∉ m :: Bool where
    a :∉ '[] = 'True
    a :∉ (a ': b) = 'False
    a :∉ (b ': c) = a :∉ c

x :: ( (Int :∈ '[Bool, Char, Int]) ~ True) => Int
x = undefined

-- mask :: ((n :∈ q) ~ False) => Masked q a -> n -> Masked (n ': q) a
-- mask value mask = ()
