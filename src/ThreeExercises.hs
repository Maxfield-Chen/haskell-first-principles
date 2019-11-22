module ThreeExercises where

thirdLetter :: String -> Char
thirdLetter s = s !! 2

stringIndex :: Int -> Char
stringIndex n = "abcdefgh" !! (n - 1)

--"Curry is awesome"
--"awesome is Curry"
rvrs :: String 
rvrs = c ++ i ++ a
  where
    s = "Curry is awesome"
    c = take 6 s
    i = drop 6 $ take 9 s
    a = drop 9 s


