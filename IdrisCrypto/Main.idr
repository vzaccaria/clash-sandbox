
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

zeroVec: (n: Nat) -> Vect n Bool 
zeroVec Z = []
zeroVec (S k) = False :: zeroVec k

b1 : Byte
b1 = [ False, True, False, False, True, False, True, False ]

zero : Byte
zero = [ False, False, False, False, False, False, False, False ]

a : Byte
a = xor b1 zero

xorReduces: (n : Bool) -> n ^ n = False
xorReduces False = Refl
xorReduces True = Refl

%name Byte b1,b2,b3

xorBReduces: (xs: Vect n Bool) -> xs `xor` xs = zeroVec n
xorBReduces [] = Refl
xorBReduces (x :: xs) = rewrite xorReduces x in rewrite xorBReduces xs in Refl

                                   
----
---- We could define a data type
---- The part after : is the type of the constructor
--data Masked : (Vect n Byte) -> Type where
--  Unsafe    :        Byte  -> Masked (Vect Z Byte)
--  Safe      :        Byte  -> Masked (Vect n Byte)
