{-# LANGUAGE ConstraintKinds       #-}
{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE ImpredicativeTypes    #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds             #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TypeOperators         #-}
{-# LANGUAGE UndecidableInstances  #-}

module Mask where

import qualified CLaSH.Prelude               as CP
import qualified CLaSH.Sized.Vector          as C

import           Data.Promotion.Prelude.List
import           GHC.Base
import           GHC.TypeLits


-- Useful type functions
type family Safe (n :: [Nat]) :: Constraint where
  Safe '[ ] = False ~ True
  Safe (a ': b)  = ()

type family Public (n :: [Nat]) :: Constraint where
    Public '[ ] = ()
    Public (a ': b)  = False ~ True

-- Set symmetric difference
type family (:-:) (n :: [Nat]) (m :: [Nat]) :: [Nat] where
    m :-: n = (m :\\ n) `Union` (n :\\ m)


-- Useful basic data
type Byte         = (CP.Unsigned 8)
newtype Masked n = MkMasked Byte


-- Private `smart` constructors; It uses Polykinds for n

mask :: forall n. Byte -> Masked (n :: [Nat])
mask i = MkMasked i

unmask :: Masked t -> Byte
unmask (MkMasked i) = i

-- Public `smart` constructors, mask value with

maskMasked :: (Safe n, Safe (n :-: m)) => Masked n -> Masked m -> Masked (n :-: m)
maskMasked (MkMasked x) (MkMasked y) = MkMasked (x CP.^ y)

maskPublic0 :: (Safe n, Public m, Safe (n :-: '[ 0 ])) => Masked n -> Masked m -> Masked (n :-: '[ 0 ])
maskPublic0 (MkMasked x) (MkMasked y) = MkMasked (x CP.^ y)


-- Public types for AES
type SAESByte      = (Safe n) => Masked n
type SAESVec16     = (Safe n) => C.Vec 16 (Masked n)

type UAESByte      = (CP.Unsigned 8)
type UAESVec16     = C.Vec 16 (UAESByte)


-- Just Tests:

-- xor :: (Safe n, Safe (n :-: m)) => Masked n -> Masked m -> Masked (n :-: m)
-- xor (MkMasked x) (MkMasked y) =  MkMasked (x CP.^ y)
--
-- z :: Masked ('[  ] :: [Nat])
-- z = mask 10
--
-- q :: Masked '[ 3 ]
-- q = mask 3

-- t = q `xor` z







--
