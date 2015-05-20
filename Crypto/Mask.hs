{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE GADTs               #-}
{-# LANGUAGE LiberalTypeSynonyms #-}
{-# LANGUAGE RankNTypes          #-}
{-# LANGUAGE TypeFamilies        #-}
{-# LANGUAGE TypeOperators       #-}
{-# LANGUAGE MultiParamTypeClasses #-}


module Mask where

import           GHC.TypeLits ()
-- import           TypeList

data Mask = Zero | Succ Mask



-- We can use now `Mask as a kind with two types:
-- `Zero
-- `Succ n, where (n is of kind `Mask)

data Masked :: * -> [ Mask ] -> * where
  Public        :: { _takep :: a } -> Masked a '[]
  MaskedWithM0  :: { _takem :: a } -> Masked a '[ 'Zero ]

public :: Int -> Masked Int '[]
public i = Public i

masked0 i = MaskedWithM0 i

-- data (NotEmpty ms ~ 'True) => Safe a ms = S (Masked a ms)

type family NotEmpty (list :: [Mask]) :: Bool where
   NotEmpty  '[] = 'False
   NotEmpty  (a ': b) = 'True



type M0 a = Masked a '[ 'Zero ]
type S00 a = Masked a '[ 'Zero ] -> Masked a '[ 'Zero ]

type M1 a = Masked a '[ 'Succ Zero ]
type S11 a = Masked a '[ Succ Zero ] -> Masked a '[ Succ Zero ]
--
-- type SafeNum a = (Num a) => Safe a
--
-- -- Tests
z :: Masked Integer '[ 'Zero ]
z = masked0 1

p :: Masked Int '[]
p = public 3

increment :: forall a ms . (Num a, (NotEmpty ms ~  True)) => Masked a ms -> Masked a ms
increment a = masked0 ((_takem a) + 1)
-- --
--
q = increment z

t = increment p
-- z = (masked0 3)
--
-- y = increment z
