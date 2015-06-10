{-# LANGUAGE TemplateHaskell #-}


module Aes where

import CLaSH.Prelude hiding (round)
import GF28
import Prelude       hiding (map, round, zipWith, (!!))
import Types
import KeySchedule
import Math

-- import           MixColumns
-- import           ShiftRows

-- Bool is true if we are in the last round

-- A Clash FSM should have the following type
-- signature:
--
-- state -> input -> (state, output)

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


aesMealy :: AESControl -> AESInput -> (AESControl, AESOutput)
aesMealy s (I text rd) = fsm s text rd
 where
   fsm _              txt    True     = ( (txt                    , keyProd (k0, 1   ))  , O i0           False)
   fsm (s', (_, 12))  _      False    = ( (s'                     , (i0, 12))            , O s'           True)
   fsm (s', (k, c))   _      False    = ( (round s' k (c == 11)   , keyProd (k,  c   ))  , O i0           False)

   k0   = aesSecretKey
   i0   = aesInitState






-- A Clash Top Entity should have the following type
-- signature (input -> output):
--
-- (SignalP a -> SignalP b)
--
-- where `a` and `b` are instance of the Pack class

topEntity :: Signal AESInput -> Signal AESOutput
topEntity text = mealy aesMealy (aesInitState, (aesInitState, 0)) text
