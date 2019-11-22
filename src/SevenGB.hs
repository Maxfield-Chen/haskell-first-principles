module SevenGB where

addOneIfOdd n = case odd n of
  True  -> f n
  False -> n
  where f n = n + 1

addOneIfOddLambda n = case odd n of
                        True -> f n
                        False -> n
                        where f = \n -> n + 1

addFive x y = (if x > y then y else x) + 5
addFiveLambda = \x -> \y -> (if x > y then y else x) + 5


