{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Lib where

-- Define type function Uplift with two input types:
--
-- Uplift: from type n to type m where
-- Uplift (n=Int) = (m=Int)
-- Uplift Double = Int

type family Uplift n m
type instance Uplift a a = a
type instance Uplift Int Double = Double
type instance Uplift Double Int = Double

myPolymorphicFunction:: (Num x, Eq x, Uplift x Double ~ Double) => x -> Double -> Double
myPolymorphicFunction 'c' _ = 0




-- Example: Force one of the parameter types of a polymorphic function:
--    plain: add :: a -> b -> (Uplift b)
-- In the above case, the function should return a double when
-- it is defined with at least a double

-- Define type function $1 with two input types:
--
-- $1: from type n to type m where
-- $1 (n=Int) = (m=Int)
-- $1 Double = Int

-- type family $1 n m
-- type instance $1 a a = a
-- type instance $1 Int Double = Double
-- type instance $1 Double Int = Double

-- Example: Force one of the parameter types of a polymorphic function:
--    plain: add :: a -> b -> ($1 b)
-- In the above case, the function should return a double when
-- it is defined with at least a double

--
--    [ptf:  onlyif(Gcd A B n ~ D) then it exists add { n } :: Pointer n -> IO () ]
--    plain: add:: (GCD Zero n Four ~ Four) => Pointer n -> IO ()

--
--  ____       _                                  _     _
-- |  _ \ ___ | |_   _ _ __ ___   ___  _ __ _ __ | |__ (_) ___
-- | |_) / _ \| | | | | '_ ` _ \ / _ \| '__| '_ \| '_ \| |/ __|
-- |  __/ (_) | | |_| | | | | | | (_) | |  | |_) | | | | | (__
-- |_|   \___/|_|\__, |_| |_| |_|\___/|_|  | .__/|_| |_|_|\___|
--               |___/                     |_|
--   __                  _   _
--  / _|_   _ _ __   ___| |_(_) ___  _ __  ___ _
-- | |_| | | | '_ \ / __| __| |/ _ \| '_ \/ __(_)
-- |  _| |_| | | | | (__| |_| | (_) | | | \__ \_
-- |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___(_)

-- Polymorphic functions:
-- Use type families with witnesses:

-- [tt|            add { a, b } :: a -> b -> ? |]

-- Determine result type from input types:

-- [ti|            add { Double, Integer }   ? = Double          |]
-- [ti|            add { Integer, Double }   ? = Double          |]
-- [ti| (Num a) => add { a,  a }             ? = a               |]
-- [ti|            add { Integer, [a] }      ? = [add Integer a] |]

-- Translates to :
--
-- class Add a b where
-- type SumTy a b
-- add :: a -> b -> SumTy a b
--
-- instance Add Integer Double where
-- type SumTy Integer Double = Double
-- add x y = fromIntegral x + y
--
-- instance Add Double Integer where
-- type SumTy Double Integer = Double
-- add x y = x + fromIntegral y
--
-- instance (Num a) => Add a a where
-- type SumTy a a = a
-- add x y = x + y

-- instance (Add Integer a) => Add Integer [a] where
-- type SumTy Integer [a] = [SumTy Integer a]
-- add x y = map (add x) y

-- [tt| cons { a, b }:: a -> [b] -> ?         |]
-- [ti| cons {Integer, [Double]}, ?=[Double]  |]


-- [tt| newRef { a, m  } :: a -> (m ?) ]
-- [ti| newRef { x, IO     }, ?=x
-- [ti| newRef { x, (ST s) }, ?=(ST s)


-- Use an associated data type
-- [tat| toTable { (a -> w)                     | T     } :: (a -> w) -> T a w ]
-- [tit| toTable { (Bool -> Bool)               | TBool } ]
-- [tit| toTable { (Either a b) -> (Either a b) | TSum  } ]


-- Partial evaluation ?
-- [tt| run { a        } :: a -> ?              -> IO () ]
-- [ti| run { (In a b) } =  a -> Out a (Dual b) -> IO () ]




--
--        _                 _                    _
--  _ __ | |__   __ _ _ __ | |_ ___  _ __ ___   | |_ _   _ _ __   ___  ___
-- | '_ \| '_ \ / _` | '_ \| __/ _ \| '_ ` _ \  | __| | | | '_ \ / _ \/ __|
-- | |_) | | | | (_| | | | | || (_) | | | | | | | |_| |_| | |_) |  __/\__ \
-- | .__/|_| |_|\__,_|_| |_|\__\___/|_| |_| |_|  \__|\__, | .__/ \___||___/
-- |_|                                               |___/|_|


-- [ptdom| Nat n ~ { Zero, Succ n [ One, Two... Seven .. ] }]

-- Note, we are using capital letters for type functions: Type { Par } :: Type
--
-- [ptt|            Isa { n }     :: Bool   |]
-- [pti|            Isa { Zero }        |]
-- [pti| (Nat n) => Isa { Succ (Nat n)} |]
--
-- [ptt |   Gcd {d, m, n } :: ?            |]
-- [pti |   Gcd {d, Zero, Zero} ? = d      |]
-- [pti |   Gcd {Zero, Zero, (Succ n)}     ? = Succ n |]

-- Usage:
--
-- [ptdom| { Pointer n, Offset n }, Nat n |]
--
-- Force parameter types:
--    [ptf:  add {m, n} :: P m -> O n ->  (Gcd {d, m, n}) ]
--    plain: add :: P m -> O n -> P (GCD Zero m n)
--
-- Force restrictions:
--    [ptf:  onlyif(Gcd A B n ~ D) then it exists add { n } :: Pointer n -> IO () ]
--    plain: add:: (GCD Zero n Four ~ Four) => Pointer n -> IO ()
