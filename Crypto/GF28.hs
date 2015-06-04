{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}

module GF28 where

import           CLaSH.Sized.Vector
import           GHC.List
import           Language.Haskell.TH
import           Prelude
import           Rom
import           SBox
import           Types


sboxVec256 = $(v sboxTable)
gm2Vec256  = $(v gm2Table )
gm3Vec256  = $(v gm3Table )

sbox c = rom256' sboxVec256 (fromIntegral c)
gm2  c = rom256' gm2Vec256 (fromIntegral c)
gm3  c = rom256' gm3Vec256 (fromIntegral c)
