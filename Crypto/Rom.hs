{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Rom where

import           CLaSH.Prelude         hiding (map, select, v)
import           CLaSH.Sized.Vector    hiding (v)
import           Prelude               hiding (map, splitAt, zipWith, (!!),
                                        (++))
import           Types

type LAddr      = Unsigned 8


rom256 :: Vec 256 AESByte -> LAddr -> AESByte
rom256 v a = v !! a
