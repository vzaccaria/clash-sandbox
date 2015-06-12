{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
module KeySchedule where

-- https://engineering.purdue.edu/kak/compsec/NewLectures/Lecture8.pdf

import qualified Prelude as P
import CLaSH.Prelude hiding (at, (**), (^^))
import GF28
import Types

type AESWord = Vec 4 AESByte

nextKey :: (AESState, Unsigned 4) -> (AESState, Unsigned 4)
nextKey (k, i) = ( (nextKey k) , (i + 1)) where

  xor' ::  AESWord ->  AESWord -> AESWord
  xor'= zipWith xor

  nextKey :: AESState -> AESState
  nextKey v = w0' ++ w1' ++ w2' ++ w3'
      where
        w0 = select d0  d1 d4 v
        w1 = select d4  d1 d4 v
        w2 = select d8  d1 d4 v
        w3 = select d12 d1 d4 v

        w0' = w0                                    `xor'` (g w3)
        w1' = w0 `xor'` w1                          `xor'` (g w3)
        w2' = w0 `xor'` w1  `xor'` w2               `xor'` (g w3)
        w3' = w0 `xor'` w1  `xor'` w2  `xor'` w3    `xor'` (g w3)

        g :: AESWord -> AESWord
        g v = x1' :> x2' :> x3' :> x4' :> Nil where
                    x1 = v !! 0
                    x2 = v !! 1
                    x3 = v !! 2
                    x4 = v !! 3
                    x1' = sbox x2 `xor` (rc i)
                    x2' = sbox x3
                    x3' = sbox x4
                    x4' = sbox x1




          --



      --
