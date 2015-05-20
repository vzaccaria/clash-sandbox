{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}
module SubBytes where

import           CLaSH.Prelude
import           GF28
import           Types

$(_buildSBox)


_subBytes:: AESStateProcessor
_subBytes = _genStateProcessor sbox
