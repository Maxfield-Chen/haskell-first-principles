module TopOrLocal where

topFunc :: Integer -> Integer
topFunc x = x + woot + tlv
 where
  woot :: Integer
  woot = 8

tlv :: Integer
tlv = 10
