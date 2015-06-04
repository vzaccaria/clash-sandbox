module Masked

import Data.Bits 

Mask : Type 
Mask = Bits 8

data Masked: Type -> Mask -> Type where
  masked: a -> Masked a x


q : Masked Nat (intToBits 5)
q = masked 1


t : Masked Nat (intToBits 5)
t = masked 3

(+):  Masked Nat x -> Masked Nat y -> Masked Nat (x `xor` y)
(+)   (masked a) (masked b) = masked (a+b)

c : Masked Nat (intToBits 0)
c = q + t

