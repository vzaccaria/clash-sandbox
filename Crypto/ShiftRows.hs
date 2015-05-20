{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}

module ShiftRows where

import           CLaSH.Prelude
import           Control.Monad.Trans.State.Lazy
import           GF28
import           Language.Haskell.TH
import           Types



_shiftRows:: AESStateProcessor
_shiftRows = _genStateProcessor id
