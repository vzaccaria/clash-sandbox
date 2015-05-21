
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

xor : Byte -> Byte -> Byte 
xor x x1 = zipWith (^) x x1

b1 : Byte
b1 = [ False, True, False, False, True, False, True, False ]

zero : Byte 
zero = [ False, False, False, False, False, False, False, False ]

--
-- We could define a data type 
-- The part after : is the type of the constructor
data Masked : (Vect n Byte) -> Type where 
  Unsafe    :        Byte  -> Masked (Vect Z Byte) 
  Safe      :        Byte  -> Masked (Vect n Byte)

