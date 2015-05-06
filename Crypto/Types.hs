{-# LANGUAGE DataKinds #-}

module Types where

import Control.Monad.Trans.State.Lazy
import CLaSH.Prelude


type AESWord  = (Unsigned 32)
type AESState = Vec 4 AESWord -- 4x4 GF28
type AESKey   = Unsigned 128 -- 4x4 GF28

type AESStateProcessor = State AESState ()
