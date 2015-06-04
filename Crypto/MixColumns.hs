{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}

module MixColumns where

import           CLaSH.Prelude hiding (at, (**), (^^))
import           GF28
import           Prelude       hiding ((!!), (**), (^^))
import           Types

infixl 7 **
-- Fake multiplication in GF2
(**) :: AESByte -> Integer -> AESByte
(**) c 1 = c
(**) c 2 = gm2 c
(**) c 3 = gm3 c

infixl 6 ^^
(^^) :: AESByte -> AESByte -> AESByte
(^^) = xor


rowByCol a0 a1 a2 a3 c = (c!!0) ** a0 ^^ (c!!1) ** a1 ^^ (c!!2) ** a2 ^^ (c!!3) ** a3

at :: Integer -> Vec 4 AESByte -> AESByte
at 0 = rowByCol 2 3 1 1
at 1 = rowByCol 1 2 3 1
at 2 = rowByCol 1 1 2 3
at 3 = rowByCol 1 2 3 4

mixCol :: Vec 4 AESByte -> Vec 4 AESByte
mixCol c = (at 0 c) :> (at 1 c) :> (at 2 c) :> (at 3 c) :> Nil



mixColumns :: AESState -> AESState
mixColumns i = mapCol mixCol i
