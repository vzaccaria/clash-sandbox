{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE TypeSynonymInstances #-}

module QCRom where

import           CLaSH.Prelude         hiding (head, map, select, take, v)
import           CLaSH.Sized.BitVector
import           CLaSH.Sized.Vector    hiding (head, take)
import           Debug.Trace
import           GF28
import           Prelude               hiding ((!!))
import           Rom
import           Test.QuickCheck       hiding (choose)
import           Types

-- getBytes n = take 1 $ simulate topEntity [ n ]

topEntity :: Vec 256 (AESByte) -> Signal LAddr -> Signal AESByte
topEntity s input = rom256 s input


prop_verifyContents :: Vec 256 (AESByte) -> LAddr -> Bool
prop_verifyContents s n = firstB == (s !! n) where
  firstB = (head $ res)
  res = simulate (topEntity s) [ n ]

instance Arbitrary LAddr where
  arbitrary = arbitrarySizedBoundedIntegral

main = do {
  quickCheck (prop_verifyContents sboxVec256);
}



-- main = take 2 $ simulate topEntity [ (bit 1), (bit 2)]
