{-# LANGUAGE DataKinds #-}

module ShiftRows where

import Control.Monad.Trans.State.Lazy
import CLaSH.Prelude
import Types

_shiftRows:: AESStateProcessor
_shiftRows = put (0:>0:>0:>0:>Nil)
