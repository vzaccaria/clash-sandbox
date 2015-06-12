{-# LANGUAGE TemplateHaskell #-}


module Aes where

import CLaSH.Prelude hiding (round)
import GF28
import Prelude       hiding (map, round, zipWith, (!!))
import Types
import KeySchedule
import SecretKey
import Math



addRK k i = zipWith xor k i

mixColumns :: AESState -> AESState
mixColumns i = mapCol mixCol i

-- shiftRows :: AESState -> AESState
-- shiftRows = permute 0   5   10  15
--                     4   9   14  3
--                     7   13  2   7
--                     12  1   6   11

shiftRows :: AESState -> AESState
shiftRows = permute 0   5   10  15
                    4   9   14  3
                    8   13  2   7
                    12  1   6   11

subBytes :: AESState -> AESState
subBytes = map sbox

round :: AESState -> AESState -> Bool -> AESState
round state k lst
  | lst            =  pipe state
  | otherwise      =  mixColumns . pipe $ state
  where
      pipe = shiftRows . subBytes . (addRK k)

-- A Clash FSM should have the following type
-- signature:
--
-- state -> input -> (state, output)

aesMealy :: AESState -> AESControl -> AESInput -> (AESControl, AESOutput)
aesMealy k0 s (I text rd) = fsm s text rd
 where
   fsm _                     txt    True     = ( (txt                    , (k0, 1 ))        , O i0           False)
   fsm (s', curKey@(k, 11))  _      False    = ( (addRK k s'             , (k0, 12))        , O i0           False)
   fsm (s', curKey@(k, 12))  _      False    = ( (i0                     , (k0, 1 ))        , O s'           True)
   fsm (s', curKey@(k, c))   _      False    = ( (round s' k (c == 10)   , nextKey curKey)  , O i0           False)

   i0   = aesInitState
