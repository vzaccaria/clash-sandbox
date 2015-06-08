{-# LANGUAGE DataKinds #-}


module Types where

import           CLaSH.Prelude
import           Prelude       hiding ((!!), (++))


type AESByte            = (Unsigned 8)
type AESState           = Vec 16 AESByte          -- 4x4 GF28
type AESControl         = (AESState, (AESState, Unsigned 4))  -- (Current state, Current Key, number of round)

type StateTransform     = AESState -> AESState
type ByteTransform      = AESByte -> AESByte
type ColTransform       = (Vec 4 AESByte) -> (Vec 4 AESByte)

{-# INLINE mapCol #-}
mapCol :: ColTransform -> StateTransform
mapCol f s = a ++ b ++ c ++ d  where
  a = f( (s !! 0) :> (s !! 1) :> (s !! 2 ) :> (s !! 3) :> Nil)
  b = f( (s !! 4) :> (s !! 5) :> (s !! 6 ) :> (s !! 7) :> Nil)
  c = f( (s !! 8) :> (s !! 9) :> (s !! 10) :> (s !! 11) :> Nil)
  d = f( (s !! 12) :> (s !! 13) :> (s !! 14) :> (s !! 15) :> Nil)

-- Other initializations

aesInitState:: AESState
aesInitState = (0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>Nil)

aesSecretKey:: AESState
aesSecretKey = 0x00 :> 0x01 :> 0x02 :> 0x03 :>
               0x04 :> 0x05 :> 0x06 :> 0x07 :>
               0x08 :> 0x09 :> 0x0a :> 0x0b :>
               0x0c :> 0x0d :> 0x0e :> 0x0f :> Nil

data AESInput   = I AESState Bool deriving Show
data AESOutput  = O AESState Bool deriving Show
