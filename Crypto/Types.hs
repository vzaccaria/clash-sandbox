{-# LANGUAGE DataKinds #-}


module Types where

import           CLaSH.Prelude
import           Prelude       hiding ((!!), (++))


type AESByte  = (Unsigned 8)
type AESState = Vec 16 AESByte -- 4x4 GF28

type StateTransform = AESState -> AESState
type ByteTransform = AESByte -> AESByte
type RowTransform = (Vec 4 AESByte) -> (Vec 4 AESByte)

mapRow :: RowTransform -> StateTransform
mapRow f s = a ++ b ++ c ++ d  where
  a = f( (s !! 0) :> (s !! 4) :> (s !! 8 ) :> (s !! 12) :> Nil)
  b = f( (s !! 0) :> (s !! 5) :> (s !! 9 ) :> (s !! 13) :> Nil)
  c = f( (s !! 2) :> (s !! 6) :> (s !! 10) :> (s !! 14) :> Nil)
  d = f( (s !! 3) :> (s !! 7) :> (s !! 11) :> (s !! 15) :> Nil)

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
