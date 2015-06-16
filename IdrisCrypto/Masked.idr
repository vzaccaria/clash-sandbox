module Masked

import Data.Bits
import Data.So

import Binary

Mask : Type
Mask = Bits 8

data Masked: Type -> Mask -> Type where
  masked: a -> Masked a x


q : Masked Nat (B "00000001")
q = masked 1

t : Masked Nat (B "00000001")
t = masked 3

syntax "is_secret" [x] [y] =  (((bitsToInt (x `xor` y)) > 0 ) = True)

isSecret : Mask -> Mask -> Bool
isSecret x y = (bitsToInt (x `xor` y)) > 0

(+):  Masked Nat x -> Masked Nat y -> {default Oh p: So (isSecret x y) } -> Masked Nat (x `xor` y)
(+) (masked a) (masked b) = masked (a+b)



c : Masked Nat (B "00000000")
c = (+) q t

-- TODO: XYZ
