module AES where

import           CLaSH.Prelude
import           Control.Monad.Trans.State.Lazy

import           ShiftRows
import           SubBytes
import           Types

round:: AESStateProcessor
round = _subBytes `bind` _shiftRows

nextAESState :: AESState -> AESState
nextAESState  = execState AES.round

aesMealy:: AESState -> () -> (AESState, AESState)
aesMealy s () = (s', s')
 where
   s' = nextAESState s

topEntity :: Signal () -> Signal AESState
topEntity = mealy aesMealy aesInitState
