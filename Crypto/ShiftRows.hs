{-# LANGUAGE DataKinds #-}

module ShiftRows where

import Types
import CLaSH.Prelude
import Control.Monad.Trans.State.Lazy
import GF28

_shiftRows:: AESStateProcessor
_shiftRows = _genStateProcessor sbox
