{-# LANGUAGE DataKinds #-}

module SubBytes where

import Types
import CLaSH.Prelude
import Control.Monad.Trans.State.Lazy
import GF28


_subBytes:: AESStateProcessor
_subBytes = _genStateProcessor sbox
