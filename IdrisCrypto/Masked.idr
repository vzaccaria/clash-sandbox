module Masked

import Data.Bits
import Binary

Mask : Type
Mask = Bits 8

data Masked: Type -> Mask -> Type where
  masked: a -> Masked a x


q : Masked Nat (B "00000001")
q = masked 1

t : Masked Nat (B "00000010")
t = masked 3

syntax "is_secret" [x] [y] =  (((bitsToInt (x `xor` y)) > 0 ) = True)


(+):  Masked Nat x -> Masked Nat y -> {
  default tactics {
    compute;
    refine Refl; 
    solve;
  }
  gt0: is_secret x y
  } -> Masked Nat (x `xor` y)
(+) (masked a) (masked b) {gt0} = masked (a+b)



c : Masked Nat (B "00000011")
c = (q + t) 

-- TODO: XYZ
