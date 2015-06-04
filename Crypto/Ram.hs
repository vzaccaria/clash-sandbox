{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Ram where

import           CLaSH.Prelude         hiding (map, select, v)
import           CLaSH.Sized.BitVector
import           Prelude               hiding (splitAt, (!!), (++))
import           Types

type Addr       = BitVector 4
type BitS       = Signal Bit
type BytePairS  = Signal (Vec 2 AESByte)
type ByteS      = Signal (Vec 1 AESByte)
type ByteC      = Vec 1 AESByte


-- From Clash example

-- decoderShift ::  BitVector 4 -> BitVector 16
-- decoderShift binaryIn = 1 `shiftL` (fromIntegral binaryIn)

select16 :: Vec 16 AESByte -> BitVector 4 ->  Vec 1 AESByte
select16 v n = (v !! (fromIntegral n)) :> Nil


ramRow' :: Vec 16 AESByte -> Signal Addr -> Signal (ByteC)
ramRow' v a = (fmap (select16 v)) a where


topEntity :: Signal Addr -> Signal ByteC
topEntity input = ramRow' aesSecretKey input
