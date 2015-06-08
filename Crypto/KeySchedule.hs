{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
module KeySchedule where

-- https://engineering.purdue.edu/kak/compsec/NewLectures/Lecture8.pdf

import Prelude hiding ((**), (^^), (++),  zipWith)
import CLaSH.Prelude hiding (at, (**), (^^), (!!))
import GF28
import Types

keyProd :: (AESState, Unsigned 4) -> (AESState, Unsigned 4)
keyProd (k, i) = (m kword, (i + 1)) where
    kword = unconcatI k
    m :: Vec 4 (Vec 4 AESByte) -> Vec 16 AESByte
    m (w0 :> w1 :> w2 :> w3 :> Nil) = w0' ++ w1' ++ w2' ++ w3'
      where
        w0' = w0                                    `xor'` (g w3)
        w1' = w0 `xor'` w1                          `xor'` (g w3)
        w2' = w0 `xor'` w1  `xor'` w2               `xor'` (g w3)
        w3' = w0 `xor'` w1  `xor'` w2  `xor'` w3    `xor'` (g w3)

        xor' :: (Vec 4 AESByte) -> (Vec 4 AESByte) -> (Vec 4 AESByte)
        xor' a b = zipWith xor a b

        g (x1 :> x2:> x3 :> x4 :> Nil) = x1' :> x2' :> x3' :> x4' :> Nil where
          x1' = sbox x2 `xor` (rc !! (fromIntegral i))
          x2' = sbox x3
          x3' = sbox x4
          x4' = sbox x1

        rc :: [ AESByte ]
        rc  = [ 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8 ]
