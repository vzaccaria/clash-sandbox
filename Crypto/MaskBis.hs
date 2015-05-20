{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds             #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TypeOperators         #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module MaskBis where

import           GHC.Exts           (Constraint)
import           GHC.TypeLits
import           Types

-- Private constructor with a phantom type
-- n is useful to track the masking applied
newtype Masked n = MkMasked AESByte
newtype Public n = MkPublic AESByte


-- Public `smart` constructors; It uses Polykinds for n
mask :: forall n. AESByte -> Masked (n :: Nat)
mask i = MkMasked i

-- Public Operations
xor :: (Safe n, Safe m, Safe (Secure n m)) => Masked n -> Masked m -> Masked (Secure n m)
xor (MkMasked x) (MkMasked y) =  MkMasked (x ^ y)

z :: Masked 2
z = mask 10

q :: Masked 3
q = mask 3

t = q `xor` z

--
-- Secure: from type n and m to z
-- Secure (n=Int) (m=Int) = (z=Int)
-- Secure (n=Double) (m=Double) = (z=Double)

type family Safe (n :: Nat) :: Constraint where
  Safe 0 = False ~ True
  Safe n = ()

-- Define type function Secure with two input types:
type family Secure (n :: Nat) (m :: Nat) :: Nat where
  Secure  0 m = m
  Secure  n 0 = n
  Secure  n m = n - m
