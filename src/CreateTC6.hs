module CreateTC6 where

data Trivial = Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True

data DayOfTheWeek =
  Mon | Tues | Wed | Thurs | Fri | Sat | Sun
  deriving (Show)

data Date =
  Date DayOfTheWeek Int

instance Eq DayOfTheWeek where
  Mon   == Mon   = True
  Tues  == Tues  = True
  Wed   == Wed   = True
  Thurs == Thurs = True
  Fri   == Fri   = True
  Sat   == Sat   = True
  Sun   == Sun   = True
  _     == _     = False

instance Eq Date where
  (==) (Date day dayOfMonth) (Date day' dayOfMonth') =
    day == day' && dayOfMonth == dayOfMonth'

instance Ord DayOfTheWeek where
  compare Fri Fri = EQ
  compare Fri _ = GT
  compare _ Fri = LT
  compare _ _ = EQ


data MID a = MID a

instance Eq a => Eq (MID a) where
  (==) (MID v) (MID v') = v == v'

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn a') = a == a'

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') = a == a' && b == b'

data StringOrInt =
  TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt a') = a == a'
  (==) (TisAString a) (TisAString a') = a == a'
  (==) _ _ = False

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a b) (Pair a' b') = a == a' && b == b'
  
data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where 
  (==) (Tuple a' b') (Tuple a b) = a == a' && b == b'

data Which a =
  ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) _ _ = False

data EitherOr a b =
  Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye a) (Goodbye a') = a == a'
  (==) _ _ = False

data Mood = Blah

instance Show Mood where
  show _ = "BLAH"

