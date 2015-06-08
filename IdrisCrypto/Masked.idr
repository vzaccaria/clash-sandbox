module Masked

import Data.Bits

Mask : Type
Mask = Bits 8

data Masked: Type -> Mask -> Type where
  masked: a -> Masked a x


q : Masked Nat (intToBits 5)
q = masked 1


t : Masked Nat (intToBits 6)
t = masked 3

syntax "is_secret" [x] [y] =  (((bitsToInt (x `xor` y)) > 0 ) = True)


(+):  Masked Nat x -> Masked Nat y -> {
  default tactics {
    refine Refl; solve;
  }
  gt0: is_secret x y
  } -> Masked Nat (x `xor` y)
(+) (masked a) (masked b) {gt0} = masked (a+b)

--(+):  Masked Nat x -> Masked Nat y  -> Masked Nat (x `xor` y)
--(+) (masked a) (masked b) = masked (a+b)


c : Masked Nat (intToBits 0)
c = (q + t) + (q + t)
