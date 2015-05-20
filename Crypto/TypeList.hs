{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE GADTs                 #-}
{-# LANGUAGE KindSignatures        #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds             #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TypeOperators         #-}

module TypeList where

infixl 6 :∈

type family n :∈ (list :: [m]) :: Bool where
    a :∈ '[] = 'False
    a :∈ (a ': b) = 'True
    a :∈ (b ': c) = a :∈ c

type family n :∉ (list :: [m]) :: Bool where
    a :∉ '[] = 'True
    a :∉ (a ': b) = 'False
    a :∉ (b ': c) = a :∉ c


-- Use polykinds
type family NotEmpty (list :: [n]) :: Bool where
   NotEmpty  '[] = 'False
   NotEmpty  (a ': b) = 'True
