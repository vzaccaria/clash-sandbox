{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}

module Math where

import Prelude hiding ((**), (^^), (++),  zipWith, (!!))
import CLaSH.Prelude hiding (at, (**), (^^))
import GF28
import Types

infixl 7 **
-- Fake multiplication in GF2
(**) :: AESByte -> Integer -> AESByte
(**) c 1 = c
(**) c 2 = gm2 c
(**) c 3 = gm3 c

infixl 6 ^^
(^^) :: AESByte -> AESByte -> AESByte
(^^) = xor

col n v = (v !! (n*4)) :> (v !! (n*4+1)) :> (v !! (n*4+2)) :> (v !! (n*4+3)) :> Nil

mapCol :: ColTransform -> StateTransform
mapCol f s = (a ++ b ++ c ++ d)  where
  a = f (col 0 s)
  b = f (col 1 s)
  c = f (col 2 s)
  d = f (col 3 s)

mixCol :: Vec 4 AESByte -> Vec 4 AESByte
mixCol v = m0 :> m1 :> m2 :> m3 :> Nil
  where
    m0 = o 2 3 1 1
    m1 = o 1 2 3 1
    m2 = o 1 1 2 3
    m3 = o 3 1 1 2

    o a0 a1 a2 a3 = (c0**a0) ^^ (c1**a1) ^^ (c2**a2) ^^ (c3**a3)

    c0 = v !! 0
    c1 = v !! 1
    c2 = v !! 2
    c3 = v !! 3

permute :: Integer -> Integer -> Integer -> Integer ->
           Integer -> Integer -> Integer -> Integer ->
           Integer -> Integer -> Integer -> Integer ->
           Integer -> Integer -> Integer -> Integer -> Vec 16 AESByte -> Vec 16 AESByte
permute a0  a1  a2  a3
        a4  a5  a6  a7
        a8  a9  a10 a11
        a12 a13 a14 a15 v =
          o0  :> o1   :> o2   :> o3   :>
          o4  :> o5   :> o6   :> o7   :>
          o8  :> o9   :> o10  :> o11  :>
          o12 :> o13  :> o14  :> o15  :> Nil where
          o0 =  v !! a0
          o1 =  v !! a1
          o2 =  v !! a2
          o3 =  v !! a3
          o4 =  v !! a4
          o5 =  v !! a5
          o6 =  v !! a6
          o7 =  v !! a7
          o8 =  v !! a8
          o9 =  v !! a9
          o10 = v !! a10
          o11 = v !! a11
          o12 = v !! a12
          o13 = v !! a13
          o14 = v !! a14
          o15 = v !! a15

trans :: Vec 16 AESByte -> Vec 16 AESByte
trans = permute 0  4  8   12
                1  5  9   13
                2  6  10  14
                3  7  11  15
