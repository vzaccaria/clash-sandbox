{-# LANGUAGE OverloadedStrings #-}

module Check where

import           Aes
import           CLaSH.Prelude hiding (take, zipWith, (++))
import           Prelude
import           Types

-- See Types.hs for the secret key

pt :: AESState
pt  = 0x00 :> 0x11 :> 0x22 :> 0x33 :>
      0x44 :> 0x55 :> 0x66 :> 0x77 :>
      0x88 :> 0x99 :> 0xaa :> 0xbb :>
      0xcc :> 0xdd :> 0xee :> 0xff :> Nil

-- enc = [0x69c4e0d8, 0x6a7b0430, 0xd8cdb780, 0x70b4c55a]

input i n = let first = I i True
                rm = fmap (\_ -> (I i False)) [1 .. n] in
                ([first] ++ rm)

output :: AESState -> Int -> [AESOutput]
output i n = let sim = simulate topEntity (input i n) in
                    take n sim

check :: Int -> [AESOutput]
check n = output pt n

checkIO :: Int -> IO String
checkIO n =  return $ show $ check n

printIO n = let f i o = show i ++ "  " ++ show o ++ "\n"
                l = ((zipWith f (input pt n) (output pt n)) :: [String]) in
                mapM putStrLn l
