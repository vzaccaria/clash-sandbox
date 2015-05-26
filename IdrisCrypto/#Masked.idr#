module Masked

import Binary

Mask : Type 
Mask = Vect 8 Bool




data Masked: Type -> Mask -> Type where
  masked: a -> Masked a x

q : Masked Nat (B "00000111")
q = masked 1


t : Masked Nat (B "00000101")
t = masked 3

f : Vect 8 Bool
f = B"01001010"

sum':  Masked Nat x -> Masked Nat y -> Masked Nat (x `xorB` y)
sum' (masked a) (masked b) = masked (a+b)



