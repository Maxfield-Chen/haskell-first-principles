module SixOneFour where

import Data.List

data Person = Person Bool deriving Show
printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

data Mood = Blah | Woot deriving (Show, Eq)
settleDown x = if x == Woot
then Blah
else x

type Subject = String
type Verb = String
type Object = String
data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

i :: RealFrac a => a
i = 3.0

freud :: Ord a => a -> a
freud x = x
myX = 1 :: Int
sig :: Int -> Int
sig x = myX

jung :: [Int] -> Int
jung xs = head (sort xs)


--Type-Kwon-Do-2
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk a2b a b = b == a2b a

-- combine values of type 'b'. Pick one.
arith :: Num b => (a -> b) -> Integer -> a -> b
arith a2b i a = a2b a + fromInteger i
