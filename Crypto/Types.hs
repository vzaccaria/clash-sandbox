{-# LANGUAGE DataKinds #-}


module Types where

import             CLaSH.Prelude
import             CLaSH.Sized.Vector hiding (foldl)
import             Prelude       hiding ((!!), (++), map)
import             Numeric    (showHex)
import             Text.Printf

type AESByte            = (Unsigned 8)
type AESState           = Vec 16 AESByte          -- 4x4 GF28
type AESControl         = (AESState, (AESState, Unsigned 4))  -- (Current state, Current Key, number of round)

type StateTransform     = AESState -> AESState
type ByteTransform      = AESByte -> AESByte
type ColTransform       = (Vec 4 AESByte) -> (Vec 4 AESByte)

data AESInput   = I AESState Bool deriving (Show, Eq)
data AESOutput  = O AESState Bool deriving (Show, Eq)
