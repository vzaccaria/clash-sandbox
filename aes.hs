{-# LANGUAGE DataKinds #-}

module AES where

import Control.Monad.Trans.State.Lazy
import CLaSH.Prelude
import qualified Data.SBV
import qualified Data.SBV.Examples.Crypto.AES as A


-- Main parameters

type AESWord = (Unsigned 32)
type AESState = Vec 4 AESWord -- 4x4 GF28
type AESKey = Unsigned 128 -- 4x4 GF28

ncycles :: Integer
ncycles = 10 -- For 128bit AES Keys

-- Utility functions


-- Additional data structures

type AESStateProcessor = State AESState ()




_shiftRows:: AESStateProcessor
_shiftRows = put (0:>0:>0:>0:>Nil)

_mixCol:: AESStateProcessor
_mixCol    = put (0:>0:>0:>0:>Nil)

round:: AESStateProcessor
round = _shiftRows >>  _mixCol

nextAESState :: AESState -> AESState
nextAESState  = execState AES.round

-- no inputs/output corresponds to state
aesMealy:: AESState -> () -> (AESState, AESState)
aesMealy s () = (s', s')
  where
    s' = nextAESState s

topEntity :: Signal () -> Signal AESState
topEntity = mealy aesMealy (0:>0:>0:>0:>Nil)

-- main :: IO ()
-- main = putStrLn "Hello"


-- shiftRows _ = put 0
--
-- sbox:: Status -> Status
-- sbox _ = put 0
--
--
-- keyAdd:: Status -> Key -> Status
-- keyAdd _ _ = put 0
--
-- roundKey:: Key -> Key
-- roundKey _ = K 0
--
-- round:: Status -> Key -> Status
-- round s k = keyAdd mcout (roundKey k)
--             where
--               mcout = mixCol sboxout
--               sboxout = sbox (shiftRows s)


-- aes input k = do
--   keyAdd input k
