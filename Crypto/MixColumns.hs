{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}

module MixColumns where

import           CLaSH.Prelude hiding (at, (**), (^^))
import           GF28
import           Prelude       hiding ((!!), (**), (^^))
import           Types
import Math




{-# INLINE mixColumns #-}
mixColumns :: AESState -> AESState
mixColumns i = mapCol mixCol i
