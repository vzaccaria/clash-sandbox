{-# LANGUAGE DataKinds #-}

module Main where

import Control.Monad.Trans.State.Lazy
import CLaSH.Prelude

type AESState = Signed 8
type AESStateProcessor = State AESState ()


_shiftRows:: AESStateProcessor
_shiftRows = modify (+1)

_mixCol:: AESStateProcessor
_mixCol    = modify (+1)

round:: AESStateProcessor
round = _shiftRows >>  _mixCol

nextAESState :: AESState -> AESState
nextAESState  = execState Main.round

-- no inputs/output corresponds to state
aesMealy:: AESState -> () -> (AESState, AESState)
aesMealy s () = (s', s')
  where
    s' = nextAESState s

topEntity :: Signal () -> Signal AESState
topEntity = mealy aesMealy 0

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
