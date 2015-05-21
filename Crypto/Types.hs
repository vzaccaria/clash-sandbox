{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}


module Types where

import           CLaSH.Prelude
import qualified CLaSH.Sized.Vector             as C
import           Control.Monad.Trans.State.Lazy


type AESByte  = (Unsigned 8)
type AESState = Vec 16 AESByte -- 4x4 GF28
type AESKey   = Unsigned 128 -- 4x4 GF28

type StateTransform = AESState -> AESState
type ByteTransform = AESByte -> AESByte
type RowTransform = (Vec 4 AESByte) -> (Vec 4 AESByte)

type AESStateProcessor = State AESState ()


_genByteProcessor:: ByteTransform -> AESStateProcessor
_genByteProcessor f = modifyStateWith (byteMapToWholeState f)

_genRowProcessor:: RowTransform -> AESStateProcessor
_genRowProcessor f = modifyStateWith (rowMapToWholeState f)


modifyStateWith::  StateTransform -> AESStateProcessor
modifyStateWith f = do { (s) <- get; put (f s)}

bind :: AESStateProcessor -> AESStateProcessor -> AESStateProcessor
bind fr sn = let snNextState = \s -> execState sn s in
              withState (snNextState) fr

byteMapToWholeState :: ByteTransform -> StateTransform
byteMapToWholeState f = C.map f

rowMapToWholeState :: RowTransform -> StateTransform
rowMapToWholeState f s = a C.++ b C.++ c C.++ d  where
  a = f( (s C.!! 0) :> (s C.!! 4) :> (s C.!! 8 ) :> (s C.!! 12) :> Nil)
  b = f( (s C.!! 1) :> (s C.!! 5) :> (s C.!! 9 ) :> (s C.!! 13) :> Nil)
  c = f( (s C.!! 2) :> (s C.!! 6) :> (s C.!! 10) :> (s C.!! 14) :> Nil)
  d = f( (s C.!! 3) :> (s C.!! 7) :> (s C.!! 11) :> (s C.!! 15) :> Nil)

-- Other initializations

aesInitState::AESState
aesInitState = (1:>2:>3:>4:>1:>2:>3:>4:>1:>2:>3:>4:>1:>2:>3:>4:>Nil)
