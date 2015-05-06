{-# LANGUAGE DataKinds #-}

module AES where

import CLaSH.Prelude
import Control.Monad.Trans.State.Lazy
import Types
import ShiftRows
import SubBytes

ncycles :: Integer
ncycles = 10 -- For 128bit AES Keys

round:: AESStateProcessor
round = _subBytes `bind` _shiftRows

nextAESState :: AESState -> AESState
nextAESState  = execState AES.round

-- no inputs/output corresponds to state
aesMealy:: AESState -> () -> (AESState, AESState)
aesMealy s () = (s', s')
  where
    s' = nextAESState s

topEntity :: Signal () -> Signal AESState
topEntity = mealy aesMealy aesInitState
