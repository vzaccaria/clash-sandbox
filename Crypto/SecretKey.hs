module SecretKey where

import             CLaSH.Prelude
import             CLaSH.Sized.Vector hiding (foldl)
import             Prelude       hiding ((!!), (++), map)
import             Numeric    (showHex)
import             Text.Printf
import Types

aesInitState:: AESState
aesInitState = (0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>0:>Nil)

-- From the AES Docks: 000102030405060708090a0b0c0d0e0f
aesSecretKey:: AESState
aesSecretKey = 0x00 :> 0x01 :> 0x02 :> 0x03 :>
               0x04 :> 0x05 :> 0x06 :> 0x07 :>
               0x08 :> 0x09 :> 0x0a :> 0x0b :>
               0x0c :> 0x0d :> 0x0e :> 0x0f :> Nil
