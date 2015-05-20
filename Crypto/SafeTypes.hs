{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}


module Types where

import           CLaSH.Prelude
import qualified CLaSH.Sized.Vector             as C
import           Control.Monad.Trans.State.Lazy
import qualified Mask                           as M
import qualified TypeList                       as TL


type AESByte  = (Unsigned 8)
type AESState = Vec 16 AESByte
type AESKey   = Vec 16 AESByte

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
