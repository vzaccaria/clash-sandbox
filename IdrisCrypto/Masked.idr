
import Data.Vect

-- This one allows only to create masked types with masks different from 0.

data BinChar : Char -> Type where
  O : BinChar '0'
  I : BinChar '1'

data Every : (a -> Type) -> List a -> Type where
  Nil  : {P : a -> Type} -> Every P []
  (::) : {P : a -> Type} -> P x -> Every P xs -> Every P (x :: xs)


bin2Nat : Vect n Bool -> Nat
bin2Nat [] = 0
bin2Nat (False :: x2) = (bin2Nat x2)
bin2Nat (True :: x2) = pow 2 (length x2) + bin2Nat x2

data Parity : Nat -> Type where
  even  : Parity (n + n)
  odd   : Parity (S (n + n))

parity : (n: Nat) -> Parity n

nat2Bin: (n: Nat) -> List Bool
nat2Bin Z = Nil
--      Patterns                                -- = Value
--      1st                   2nd
nat2Bin k                     with (parity k)
        nat2Bin (j + j)       | even               = False :: nat2Bin j
        nat2Bin (S (j+j))     | odd                = True :: nat2Bin j

fromBinChars : Every BinChar xs -> Nat -> Nat
fromBinChars [] _ = 0
fromBinChars (O :: ys) k = fromBinChars ys (k - 1)
fromBinChars (I :: ys) k = pow 2 k + fromBinChars ys (k - 1)

fromBinCharsB : Every BinChar xs -> Vect (length xs) Bool
fromBinCharsB [] = []
fromBinCharsB (O :: ys) = False :: fromBinCharsB(ys)
fromBinCharsB (I :: ys) = True  :: fromBinCharsB(ys)

xor : Bool -> Bool -> Bool
xor True  b = not b
xor False b = b

xorB : Vect 8 Bool -> Vect 8 Bool -> Vect 8 Bool
xorB a b = zipWith (xor) a b


-- Use constraint in definition of function between {auto Constraint: ... }:
-- Declare that constraint should hold in function cases with {Constraint}

b : (s : String) -> {auto p : Every BinChar (unpack s)} -> {auto q: length s = 8} -> Nat
b {p} {q} s = fromBinChars p (length s - 1)

B : (s: String) -> {auto p : Every BinChar (unpack s)} -> Vect (length (unpack s)) Bool
B {p} s = fromBinCharsB p

data Masked: Type -> Vect 8 Bool -> Type where
  masked: a -> Masked a x

q : Masked Nat (B "00000111")
q = masked 1

t : Masked Nat (B "00000101")
t = masked 3

f : Vect 8 Bool
f = B"01001010"

sum':  Masked Nat x -> Masked Nat y -> Masked Nat (x `xorB` y)
sum' (masked a) (masked b) = masked (a+b)



--diff: Nat -> Nat -> Nat
--diff n m = n ^ m

--xor : Masked a m -> Masked a n -> Masked a (diff m n)


--t : Masked Nat (b "0")
--t = masked 7
