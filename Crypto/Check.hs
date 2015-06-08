{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}


module Check where

import           Aes
import           CLaSH.Prelude hiding (take, zipWith, (++))
import           Prelude
import           Types
import           KeySchedule(keyProd)

import Test.Tasty
-- import Test.Tasty.SmallCheck as SC
-- import Test.Tasty.QuickCheck as QC
import Test.Tasty.HUnit


main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [keySchedule]



-- Check key schedule

round0 = 0 :: Unsigned 4
round1 = 1 :: Unsigned 4
round3 = 3 :: Unsigned 4
round4 = 4 :: Unsigned 4

round0Key :: AESState
round0Key = 0x2b :> 0x7e :> 0x15 :> 0x16 :> 0x28 :> 0xae :> 0xd2 :> 0xa6 :> 0xab :> 0xf7 :> 0x15 :> 0x88 :> 0x09 :> 0xcf :> 0x4f :> 0x3c :> Nil

round1Key :: AESState
round1Key = 0xa0 :> 0xfa :> 0xfe :> 0x17 :> 0x88 :> 0x54 :> 0x2c :> 0xb1 :> 0x23 :> 0xa3 :> 0x39 :> 0x39 :> 0x2a :> 0x6c :> 0x76 :> 0x05 :> Nil

round3Key :: AESState
round3Key = 0x3d :> 0x80 :> 0x47 :> 0x7d :> 0x47 :> 0x16 :> 0xfe :> 0x3e :> 0x1e :> 0x23 :> 0x7e :> 0x44 :> 0x6d :> 0x7a :> 0x88 :> 0x3b :> Nil

round4Key :: AESState
round4Key = 0xef :> 0x44 :> 0xa5 :> 0x41 :> 0xa8 :> 0x52 :> 0x5b :> 0x7f :> 0xb6 :> 0x71 :> 0x25 :> 0x3b :> 0xdb :> 0x0b :> 0xad :> 0x00 :> Nil


keySchedule = testGroup "HUnit - KeySchedule" [
  (testCase "Standard dictated key for round1" $
  let   exec    = toList $ fst (keyProd (round0Key, round1))
        expect  = toList round1Key in
        (assertEqual "should be equal" exec expect)
  ),
  (testCase "Standard dictated key for round4" $
  let   exec    = toList $ fst (keyProd (round3Key, round4))
        expect  = toList round4Key in
        (assertEqual "should be equal" exec expect)
  )
    ]
