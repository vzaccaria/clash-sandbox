{-# LANGUAGE DataKinds #-}

module Ram where

import           CLaSH.Prelude hiding (map, select, v)
import           Types

select2 :: Signal AESByte -> Signal AESByte -> Signal Bool -> Signal AESByte
select2 v1 v2 n = mux n v1 v2

ramRow :: Vec 16 AESByte -> Signal (Unsigned 4) -> Signal AESByte
ramRow v n = select2 v0 v1 n0 where
    n0    = signal (n == 0x00 || n == 0x01)
    v0    = signal (v CLaSH.Prelude.!! 10)
    v1    = signal (v CLaSH.Prelude.!! 11)

topEntity :: Signal (Unsigned 4) -> Signal AESByte
topEntity = ramRow aesSecretKey
