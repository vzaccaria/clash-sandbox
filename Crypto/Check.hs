{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}


module Check where

import           Aes
import           CLaSH.Prelude hiding (take, zipWith, (++), round)
import           Prelude hiding (round)
import           Types
import           KeySchedule(keyProd)
import Utils
import Math

import Test.Tasty
-- import Test.Tasty.SmallCheck as SC
-- import Test.Tasty.QuickCheck as QC
import Test.Tasty.HUnit


main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [keySchedule, aes, aesE2E]





keySchedule = testGroup "HUnit - KeySchedule" [
  (testCase "Standard dictated key for round1" $
  let   exec    = toList $ fst (keyProd (k0, round1))
        expect  = toList k1 in
        (assertEqual "should be equal" exec expect)
  ),
  (testCase "Standard dictated key for round4" $
  let   exec    = toList $ fst (keyProd (k3, round4))
        expect  = toList k4 in
        (assertEqual "should be equal" exec expect)
  )
    ]


aes = testGroup "HUnit - AES Encrypt" [
  (testCase "Compute addKey"     $ (assertEqual ""   (addRK k0 i0) ak0) ),
  (testCase "Compute subBytes"   $ (assertEqual ""   (subBytes $ (addRK k0 i0)) sb0) ),
  (testCase "Compute shiftRows"  $ (assertEqual ""   (shiftRows . subBytes $ (addRK k0 i0)) sr0) ),
  (testCase "Compute mixColumns" $ (assertEqual ""   (mixColumns . shiftRows . subBytes $ (addRK k0 i0)) mc0) ),
  (testCase "Compute round"      $ (assertEqual ""   (round i0 k0 False) s1) )
  ]

c0 = (i0, (k0, 1))
c1 = (s1, (k1, 2))

zs = aesInitState

aesE2E = testGroup "HUnit - AES Encrypt - FSM" [
  (testCase "Compute complete round (state+key)"     $ (assertEqual "" (fst (aesMealy c0 (I zs False))) (c1)))
  ]


-- Page 33 of AES Standard - Appendix B.
-- Trans is used to transform a matrix state in that page to an actual state in memory
i0 :: AESState
i0 = trans $  0x32 :> 0x88 :> 0x31 :> 0xe0 :>
              0x43 :> 0x5a :> 0x31 :> 0x37 :>
              0xf6 :> 0x30 :> 0x98 :> 0x07 :>
              0xa8 :> 0x8d :> 0xa2 :> 0x34 :> Nil

k0  =         0x2b :> 0x7e :> 0x15 :> 0x16 :>
              0x28 :> 0xae :> 0xd2 :> 0xa6 :>
              0xab :> 0xf7 :> 0x15 :> 0x88 :>
              0x09 :> 0xcf :> 0x4f :> 0x3c :> Nil

ak0 = trans $ 0x19 :> 0xa0 :> 0x9a :> 0xe9  :> 0x3d :> 0xf4 :> 0xc6 :> 0xf8  :> 0xe3 :> 0xe2 :> 0x8d :> 0x48  :> 0xbe :> 0x2b :> 0x2a :> 0x08 :> Nil
sb0 = trans $ 0xd4 :> 0xe0 :> 0xb8 :> 0x1e  :> 0x27 :> 0xbf :> 0xb4 :> 0x41  :> 0x11 :> 0x98 :> 0x5d :> 0x52  :> 0xae :> 0xf1 :> 0xe5 :> 0x30 :> Nil
sr0 = trans $ 0xd4 :> 0xe0 :> 0xb8 :> 0x1e  :> 0xbf :> 0xb4 :> 0x41 :> 0x27  :> 0x5d :> 0x52 :> 0x11 :> 0x98  :> 0x30 :> 0xae :> 0xf1 :> 0xe5 :> Nil
mc0 = trans $ 0x04 :> 0xe0 :> 0x48 :> 0x28  :> 0x66 :> 0xcb :> 0xf8 :> 0x06  :> 0x81 :> 0x19 :> 0xd3 :> 0x26  :> 0xe5 :> 0x9a :> 0x7a :> 0x4c :> Nil

-- Check key schedule

round0 = 0 :: Unsigned 4
round1 = 1 :: Unsigned 4
round3 = 3 :: Unsigned 4
round4 = 4 :: Unsigned 4


k1 :: AESState
k1 = 0xa0 :> 0xfa :> 0xfe :> 0x17 :> 0x88 :> 0x54 :> 0x2c :> 0xb1 :> 0x23 :> 0xa3 :> 0x39 :> 0x39 :> 0x2a :> 0x6c :> 0x76 :> 0x05 :> Nil

k3 :: AESState
k3 = 0x3d :> 0x80 :> 0x47 :> 0x7d :> 0x47 :> 0x16 :> 0xfe :> 0x3e :> 0x1e :> 0x23 :> 0x7e :> 0x44 :> 0x6d :> 0x7a :> 0x88 :> 0x3b :> Nil

k4 :: AESState
k4 = 0xef :> 0x44 :> 0xa5 :> 0x41 :> 0xa8 :> 0x52 :> 0x5b :> 0x7f :> 0xb6 :> 0x71 :> 0x25 :> 0x3b :> 0xdb :> 0x0b :> 0xad :> 0x00 :> Nil

s1 = mc0
