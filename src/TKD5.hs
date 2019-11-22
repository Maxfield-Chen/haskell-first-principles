module TKD5 where


data Woot
data Blah

--f :: Woot -> Blah
--f = undefined

--g :: (Blah, Woot) -> (Blah, Blah)
--g (b, w) = (b, f w)

--f :: Int -> String
--f = undefined
--g :: String -> Char
--g = undefined
--h :: Int -> Char
--h i = g (f i)

data A
data B
data C
q :: A -> B
q = undefined
w :: B -> C
w = undefined
e :: A -> C
e a = w $ q a 

data X
data Y
data Z
xz :: X -> Z
xz = undefined
yz :: Y -> Z
yz = undefined
xform :: (X, Y) -> (Z, Z)
xform (x,y) = (xz x, yz y) 

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge x2y y2wz x = fst (y2wz $ x2y x)
