{-# LANGUAGE NoMonomorphismRestriction #-}

module TypeInference5 where

-- Num a => a
a = (* 9) 6

-- (Num a) => (a, [Char])
b = head [(0, "doge"), (1, "kat")]

-- (Integer, [Char])
c = head [(0 :: Integer, "doge"), (1, "cat")]

-- Bool
d = if False then True else False

-- Int
e = length [1, 2, 3, 4, 5]

-- Bool
f = (length [1, 2, 3, 4]) > length "ABCDEGF"

fH :: [x] -> x
fH (x : _) = x

fC :: (Ord x) => x -> x -> Bool
fC x y = if (x > y) then True else False

fS :: (a, b) -> b
fS (x, y) = y

i :: a -> a
i a = a

c' :: a -> b -> a
c' a _ = a

-- 3 - Yes

r :: [a] -> [a]
r x = x

r' :: [a] -> [a]
r' (_ : xs) = xs

co :: (b -> c) -> (a -> b) -> a -> c
co b2c a2b a = b2c (a2b a)

a' :: (a -> c) -> a -> a
a' _ a = a

a'' :: (a -> b) -> a -> b
a'' a2b = a2b

-- Fix It!


