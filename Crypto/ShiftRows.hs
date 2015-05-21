{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}

module ShiftRows where

import           CLaSH.Prelude
import           CLaSH.Sized.Vector             as C
import           Control.Monad.Trans.State.Lazy
import           GF28
import           Language.Haskell.TH
import           Types

_shift :: AESState -> AESState
_shift i =   o0 :> o1 :> o2 :> o3 :> o4 :> o5 :> o6 :> o7 :> o8 :> o9 :> o10 :> o11 :> o12 :> o13 :> o14 :> o15 :> Nil
  where
    o0 = i C.!! 0
    o1 = i C.!! 5
    o2 = i C.!! 10
    o3 = i C.!! 15
    o4 = i C.!! 4
    o5 = i C.!! 9
    o6 = i C.!! 14
    o7 = i C.!! 3
    o8 = i C.!! 8
    o9 = i C.!! 13
    o10 = i C.!! 2
    o11 = i C.!! 7
    o12 = i C.!! 12
    o13 = i C.!! 1
    o14 = i C.!! 6
    o15 = i C.!! 11

_shiftRows:: AESStateProcessor
_shiftRows = modifyStateWith _shift
