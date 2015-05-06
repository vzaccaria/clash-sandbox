{-# LANGUAGE DataKinds #-}

module Types where

import Control.Monad.Trans.State.Lazy
import CLaSH.Prelude
import CLaSH.Sized.Vector


type AESByte  = (Unsigned 8)
type AESState = Vec 16 AESByte -- 4x4 GF28
type AESKey   = Unsigned 128 -- 4x4 GF28

type AESStateProcessor = State AESState ()

aesInitState::AESState
aesInitState = (1:>2:>3:>4:>1:>2:>3:>4:>1:>2:>3:>4:>1:>2:>3:>4:>Nil)

_genStateProcessor:: ( AESByte -> AESByte ) -> AESStateProcessor
_genStateProcessor f = do { (s) <- get; put (CLaSH.Sized.Vector.map f s) }

type StateTransform = AESState -> AESState

modifySP::  StateTransform -> AESStateProcessor
modifySP f = do { (s) <- get; put (f s)}

bind :: AESStateProcessor -> AESStateProcessor -> AESStateProcessor
bind fr sn = let snNextState = \s -> execState sn s in
              withState (snNextState) fr
