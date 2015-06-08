module Binary

import Data.Bits

data BinChar : Char -> Type where
  O : BinChar '0'
  I : BinChar '1'

data Every : (a -> Type) -> List a -> Type where
  Nil  : {P : a -> Type} -> Every P []
  (::) : {P : a -> Type} -> P x -> Every P xs -> Every P (x :: xs)

fromBinCharsB : Every BinChar xs -> Bits (length xs)
fromBinCharsB (O :: []) = (intToBits 0)
fromBinCharsB (I :: []) = (intToBits 1)
fromBinCharsB (O :: ys) = (zeroExtend (fromBinCharsB ys)) : Bits (length xs)
fromBinCharsB (I :: ys) = setBit (length ys + 1) (zeroExtend (fromBinCharsB(ys)))

B : (s: String) -> {auto p : Every BinChar (unpack s)} -> Bits (length (unpack s))
B {p} s = fromBinCharsB p

x: Bits 3
x = B "100"
