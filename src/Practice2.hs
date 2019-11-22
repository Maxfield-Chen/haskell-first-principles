module Practice2 where

one = x * 3 + y where
  x = 3
  y = 1000

two = x * 5 where
  x = 10 * 5 + y
  y = 10

three = z / x + y where
  x = 7
  y = negate x
  z = y * 10
