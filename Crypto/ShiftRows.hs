{-# LANGUAGE DataKinds       #-}

module ShiftRows where

import           CLaSH.Prelude
import           Prelude       hiding ((!!))
import           Types

shiftRows :: AESState -> AESState
shiftRows i =   o0 :> o1 :> o2 :> o3 :> o4 :> o5 :> o6 :> o7 :> o8 :> o9 :> o10 :> o11 :> o12 :> o13 :> o14 :> o15 :> Nil
  where
    o0 =  i !! 0
    o1 =  i !! 5
    o2 =  i !! 10
    o3 =  i !! 15
    o4 =  i !! 4
    o5 =  i !! 9
    o6 =  i !! 14
    o7 =  i !! 3
    o8 =  i !! 8
    o9 =  i !! 13
    o10 = i !! 2
    o11 = i !! 7
    o12 = i !! 12
    o13 = i !! 1
    o14 = i !! 6
    o15 = i !! 11
