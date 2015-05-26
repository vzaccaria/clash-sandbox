module Binary

import Data.Vect

data BinChar : Char -> Type where
  O : BinChar '0'
  I : BinChar '1'

data Every : (a -> Type) -> List a -> Type where
  Nil  : {P : a -> Type} -> Every P []
  (::) : {P : a -> Type} -> P x -> Every P xs -> Every P (x :: xs)

fromBinCharsB : Every BinChar xs -> Vect (length xs) Bool
fromBinCharsB [] = []
fromBinCharsB (O :: ys) = False :: fromBinCharsB(ys)
fromBinCharsB (I :: ys) = True  :: fromBinCharsB(ys)

xor : Bool -> Bool -> Bool
xor True  b = not b
xor False b = b

xorB : Vect n Bool -> Vect n Bool -> Vect n Bool
xorB a b = zipWith (xor) a b

-- Constructor, allows binary literals

B : (s: String) -> {auto p : Every BinChar (unpack s)} -> Vect (length (unpack s)) Bool
B {p} s = fromBinCharsB p

