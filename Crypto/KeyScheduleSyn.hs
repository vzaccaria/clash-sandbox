{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TemplateHaskell #-}


module KeyScheduleSyn where

import           CLaSH.Prelude hiding (round)
import           GF28
import           Prelude       hiding (map, round, zipWith)
import           Types
import           KeySchedule




topEntity :: Signal (AESState, Unsigned 4)-> Signal (AESState, Unsigned 4)
topEntity v = keyProd <$> v
