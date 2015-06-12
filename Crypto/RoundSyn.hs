{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TemplateHaskell #-}


module RoundSyn where

import           CLaSH.Prelude hiding (round)
import           GF28
import           Prelude       hiding (map, round, zipWith)
import           Types
import           Aes



-- round synthesis

topEntity :: Signal AESState -> Signal AESState -> Signal Bool -> Signal AESState
topEntity s0 s1 b0  = (liftA3 round) s0 s1 b0

-- Aes synthesis
