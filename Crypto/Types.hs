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

type AESStateProcessor = State AESState ()


_genStateProcessor:: ByteTransform -> AESStateProcessor
_genStateProcessor f = modifyStateWith (mapToWholeState f)

modifyStateWith::  StateTransform -> AESStateProcessor
modifyStateWith f = do { (s) <- get; put (f s)}

bind :: AESStateProcessor -> AESStateProcessor -> AESStateProcessor
bind fr sn = let snNextState = \s -> execState sn s in
              withState (snNextState) fr

mapToWholeState :: ByteTransform -> StateTransform
mapToWholeState f = C.map f

-- Other initializations

aesInitState::AESState
aesInitState = (1:>2:>3:>4:>1:>2:>3:>4:>1:>2:>3:>4:>1:>2:>3:>4:>Nil)
