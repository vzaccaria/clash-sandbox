

-- This one allows only to create masked types with masks different from 0.

data BinChar : Char -> Type where
  O : BinChar '0'
  I : BinChar '1'

data Every : (a -> Type) -> List a -> Type where
  Nil  : {P : a -> Type} -> Every P []
  (::) : {P : a -> Type} -> P x -> Every P xs -> Every P (x :: xs)

fromBinChars : Every BinChar xs -> Nat -> Nat
fromBinChars [] _ = 0
fromBinChars (O :: ys) k = fromBinChars ys (k - 1)
fromBinChars (I :: ys) k = pow 2 k + fromBinChars ys (k - 1)

b : (s : String) -> {auto p : Every BinChar (unpack s)} -> Nat
b {p} s = fromBinChars p (length s - 1)

data Masked: Type -> (m: Nat) -> Type where
  masked: a -> Masked a (S m)


q : Masked Nat (b "0111")
q = masked 1 

--t : Masked Nat (b "0")
--t = masked 7 




