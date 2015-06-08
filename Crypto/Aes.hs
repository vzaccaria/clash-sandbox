{-# LANGUAGE TemplateHaskell #-}


module Aes where

import           CLaSH.Prelude hiding (round)
import           GF28
import           MixColumns
import           Prelude       hiding (map, round, zipWith)
import           ShiftRows
import           Types
import KeySchedule

-- Bool is true if we are in the last round
round :: AESState -> AESState -> Bool -> AESState
round state k False = mixColumns . shiftRows . (map sbox) . (addRK k) $ state
round state k True  =              shiftRows . (map sbox) . (addRK k) $ state

addRK k i = zipWith xor k i

-- A Clash FSM should have the following type
-- signature:
--
-- state -> input -> (state, output)

aesMealy :: AESControl -> AESInput -> (AESControl, AESOutput)
aesMealy s (I text rd) = fsm s text rd
 where
   fsm _              txt    True     = ( (txt                    , keyProd (k0, 1   ))  , O i0 False)
   fsm (s', (_, 12))  _      False    = ( (s'                     , (i0, 12))            , O s'           True)
   fsm (s', (k, c))   _      False    = ( (round s' k (c == 11)   , keyProd (k,  c+1 ))  , O i0           False)

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
