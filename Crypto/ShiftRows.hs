{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TemplateHaskell #-}

module ShiftRows where

import Types
import CLaSH.Prelude
import Control.Monad.Trans.State.Lazy
import GF28
import Language.Haskell.TH

$(_buildSBox)

_shiftRows:: AESStateProcessor
_shiftRows = _genStateProcessor sbox
