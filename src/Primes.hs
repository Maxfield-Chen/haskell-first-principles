module Primes where
-- Needed for mod'
import Data.Fixed

isPrime :: Double -> Bool
isPrime p | p <= 1    = False
          | otherwise = not (any (divisibleBy p) dRange)
  where dRange = [2 .. (sqrt p)] :: [Double]

dec :: Num a => a -> a
dec x = x - 1

isInt ::  RealFrac a => a -> Bool
isInt x = x == fromIntegral (round x)

divisibleBy :: (RealFrac a, Enum a) => a -> a -> Bool
-- Naive Solution
divisibleBy p x = mod' p x == 0
-- No mod Solution (div)
-- divisibleBy p x = isInt (p / x)
-- No mod Solution (mult)
-- divisibleBy p x = any (\n -> x * n == p) [2 .. p]
-- No Mult / Div
--divisibleBy p x | p < x  = False
-- | p == x = true
-- | p > x  = divisibleBy (p - x) x
