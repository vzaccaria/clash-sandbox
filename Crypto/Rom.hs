{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Rom where

import           CLaSH.Prelude         hiding (map, select, v)
import           CLaSH.Sized.BitVector
import           CLaSH.Sized.Vector    hiding (v)
import           Prelude               hiding (map, splitAt, zipWith, (!!),
                                        (++))
import           Types

type Addr       = BitVector 4
type LAddr      = BitVector 8
type BitS       = Signal Bit


-- From Clash example

-- decoderShift ::  BitVector 4 -> BitVector 16
-- decoderShift binaryIn = 1 `shiftL` (fromIntegral binaryIn)

select16 :: Vec 16 a -> BitVector 4 ->  a
select16 v n = v !! (fromIntegral n)

select256 :: Vec 16 (Vec 16 a) -> BitVector 8 -> a
select256 v n = select16 intermediate hi where
            intermediate = map fn v
            (hi,lo)      = split n
            fn           = (flip select16) lo


rom256' :: Vec 256 AESByte -> LAddr -> AESByte
rom256' r a = (select256 romv) a where
             romv = unconcatI r

rom256 :: Vec 256 AESByte -> Signal LAddr -> Signal AESByte
rom256 r a = fmap (select256 romv) a where
             romv = unconcatI r       -- Vec 16 (Vec 16 AESByte)
