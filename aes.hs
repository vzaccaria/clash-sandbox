{-# LANGUAGE DataKinds #-}

module Main where

import Control.Monad.Trans.State.Lazy
import CLaSH.Prelude

_shiftRows = put (4::(Signed 8))
_mixCol    = put (5::(Signed 8))

round = _shiftRows >>  _mixCol

_roundMealy state input = (state', output)
  where
    state' = execState Main.round state
    output = state

roundMealy = _roundMealy <^> 0

topEntity = roundMealy

main :: IO ()
main = putStrLn "Hello"


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
