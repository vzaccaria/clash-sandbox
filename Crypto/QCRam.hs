{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE TypeSynonymInstances #-}
module QCRam where

import           CLaSH.Prelude         hiding (head, map, select, take, v)
import           CLaSH.Sized.BitVector
import           Debug.Trace
import           Prelude               hiding ((!!))
import           Ram
import           Test.QuickCheck       hiding (choose)
import           Types

prop_shouldGetKey :: Addr -> Bool
prop_shouldGetKey n = firstB == (aesSecretKey !! n) where
  firstB = (head $ res) !! 0
  res = simulate topEntity [ n ]

getBytes n = take 1 $ simulate topEntity [ n ]

instance Arbitrary Addr where
  arbitrary = arbitrarySizedBoundedIntegral

main = quickCheck prop_shouldGetKey



-- main = take 2 $ simulate topEntity [ (bit 1), (bit 2)]
