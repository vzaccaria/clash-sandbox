{-# LANGUAGE DataKinds #-}

module Utils where

import qualified Prelude as P
import CLaSH.Sized.Vector
import CLaSH.Prelude hiding ((++))
import Text.Printf


showHex :: Vec n (Unsigned 8) -> String
showHex = foldl (P.++) "" . map ((printf " %02x" ) . toInteger)
