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


-- Other initializations

aesInitState:: AESState
aesInitState = (0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>Nil)

-- From the AES Docks: 000102030405060708090a0b0c0d0e0f
aesSecretKey:: AESState
aesSecretKey = 0x00 :> 0x01 :> 0x02 :> 0x03 :>
               0x04 :> 0x05 :> 0x06 :> 0x07 :>
               0x08 :> 0x09 :> 0x0a :> 0x0b :>
               0x0c :> 0x0d :> 0x0e :> 0x0f :> Nil

data AESInput   = I AESState Bool deriving Show
data AESOutput  = O AESState Bool deriving Show

roundConstants :: [AESByte]
roundConstants = [ 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8 ]
