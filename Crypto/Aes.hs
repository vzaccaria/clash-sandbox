{-# LANGUAGE CPP                   #-}
{-# LANGUAGE ConstraintKinds       #-}
{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE ImpredicativeTypes    #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds             #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TypeOperators         #-}
{-# LANGUAGE UndecidableInstances  #-}

module AES where

import           CLaSH.Prelude
import           Control.Monad.Trans.State.Lazy
import           Mask
import           SBox


-- nextAESState :: UAESByte -> UAESByte
nextAESState :: (Safe n, Safe m) => Masked n -> Masked (m :-: '[ 0 ])
nextAESState sin = maskPublic0 (sbox sin) 0

-- aesMealy:: UAESByte -> () -> (UAESByte, UAESByte)
-- aesMealy s () = (s', s')
--  where
--    s' = nextAESState s
--
-- topEntity :: Signal () -> Signal UAESByte
-- topEntity = mealy aesMealy
