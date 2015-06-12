{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TemplateHaskell #-}


module AesSyn where

import           CLaSH.Prelude hiding (round)
import           GF28
import           Prelude       hiding (map, round, zipWith)
import           Types
import           Aes
import           SecretKey



topEntity :: Signal AESInput -> Signal AESOutput
topEntity text = mealy (aesMealy aesSecretKey) (aesInitState, (aesInitState, 0)) text
