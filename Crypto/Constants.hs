module Constants where

import             CLaSH.Prelude
import             CLaSH.Sized.Vector hiding (foldl)
import             Prelude       hiding ((!!), (++), map)
import             Numeric    (showHex)
import             Text.Printf
import Types

aesInitState:: AESState
aesInitState = (0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>Nil)

roundConstants :: [AESByte]
roundConstants = [ 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8 ]
