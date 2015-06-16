

import Data.Bits

data BinChar : Char -> Type where
  O : BinChar '0'
  I : BinChar '1'

data Every : (a -> Type) -> List a -> Type where
  Nil  : {P : a -> Type} -> Every P  []
  (::) : {P : a -> Type} -> P x -> Every P xs -> Every P (x :: xs)

size: Every BinChar xs -> Nat
size Nil = 0
size (a :: b) = (S Z) + (size b)
        

n: Integer -> Every BinChar a -> Integer
n a z = a + (pow 2 ((size z)))

fromBinCharsB : Every BinChar xs -> Bits (length xs)
fromBinCharsB       (Nil)                         = intToBits 0
fromBinCharsB       (y :: z)  with (y, bitsToInt (fromBinCharsB z))
      fromBinCharsB   (y :: z)   |   (O, a)       = intToBits a
      fromBinCharsB   (y :: z)   |   (I, a)       = intToBits (n a z) 

B : (s: String) -> {auto p : Every BinChar (unpack s)} -> Bits (length (unpack s))
B {p} s = fromBinCharsB p

x0: Integer
x0 = bitsToInt (B "00100000")

q: Integer 
q = n 2 (I :: I :: Nil)

