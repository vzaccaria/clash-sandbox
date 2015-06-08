{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}

module Math where

import Prelude hiding ((**), (^^), (++),  zipWith)
import CLaSH.Prelude hiding (at, (**), (^^), (!!))
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

mixCol :: Vec 4 AESByte -> Vec 4 AESByte
mixCol (c0 :> c1 :> c2 :> c3 :> Nil) = m0 :> m1 :> m2 :> m3 :> Nil
  where
    o a0 a1 a2 a3 = c0**a0 ^^ c1**a1 ^^ c2**a2 ^^ c3**a3

    m0 = o 2 3 1 1
    m1 = o 1 2 3 1
    m2 = o 1 1 2 3
    m3 = o 1 2 3 4
