
module Main

import Data.Fin
import Data.Vect
import Prelude.Bool

infixr 6 ^

(^) : Bool -> Bool -> Bool
(^) False False = False
(^) True True = False
(^) _ _ = True

Byte : Type
Byte = Vect 8 Bool

xor : Vect n Bool -> Vect n Bool -> Vect n Bool 
xor [] [] = []
xor (x :: xs) (y :: ys) = (x ^ y) :: (xor xs ys)

b1 : Byte
b1 = [ False, True, False, False, True, False, True, False ]

zero : Byte
zero = [ False, False, False, False, False, False, False, False ]

a : Byte
a = xor b1 zero

xorBReduces: (n : Bool) -> n ^ n = False
xorBReduces False = Refl
xorBReduces True = Refl

xorReduces: (n : Byte) -> xor n n = zero
xorReduces (x :: xs) = ?xorReduces_rhs_1

----
---- We could define a data type
---- The part after : is the type of the constructor
--data Masked : (Vect n Byte) -> Type where
--  Unsafe    :        Byte  -> Masked (Vect Z Byte)
--  Safe      :        Byte  -> Masked (Vect n Byte)
