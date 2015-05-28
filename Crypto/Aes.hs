{-# LANGUAGE TemplateHaskell #-}


module Aes where

import           CLaSH.Prelude hiding (round)
import           GF28
import           Prelude       hiding (map, round, zipWith)
import           ShiftRows
import           Types

$(_buildSBox)

addRoundKey i = zipWith xor i aesSecretKey

round         = shiftRows . (map sbox)

-- A Clash FSM should have the following type
-- signature:
--
-- state -> input -> (state, output)

aesMealy :: AESState -> AESInput -> (AESState, AESOutput)
aesMealy s (I text rd) = fsm s text rd
 where
   fsm _  txt   True     = (addRoundKey txt, O aesInitState False) -- Initial
   fsm ps   _   False    = (round ps,        O ps True)  --



-- A Clash Top Entity should have the following type
-- signature
--
-- (SignalP a -> SignalP b)
--
-- where a is a value that is an instance of Pack

topEntity :: Signal AESInput -> Signal AESOutput
topEntity text = mealy aesMealy aesInitState text
