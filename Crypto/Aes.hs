{-# LANGUAGE TemplateHaskell #-}


module Aes where

import           CLaSH.Prelude hiding (round)
import           GF28
import           MixColumns
import           Prelude       hiding (map, round, zipWith)
import           ShiftRows
import           Types


-- Creates an sbox table
$(_buildSBox)


addRoundKey i = zipWith xor i aesSecretKey

-- The second parameter is true if we are in the last round
round :: AESState -> Bool -> AESState
round state False = mixColumns . shiftRows . (map sbox) $ state
round state True  = shiftRows . (map sbox) $ state


-- A Clash FSM should have the following type
-- signature:
--
-- state -> input -> (state, output)

aesMealy :: AESControl -> AESInput -> (AESControl, AESOutput)
aesMealy s (I text rd) = fsm s text rd
 where
   fsm _         txt    True     = ( (addRoundKey txt, 0)      , O aesInitState False)
   fsm (s', c)   _      False    = ( (round s' (c == 9), c+1)  , O s' False)



-- A Clash Top Entity should have the following type
-- signature (input -> output):
--
-- (SignalP a -> SignalP b)
--
-- where `a` and `b` are instance of the Pack class

topEntity :: Signal AESInput -> Signal AESOutput
topEntity text = mealy aesMealy (aesInitState, 0) text
