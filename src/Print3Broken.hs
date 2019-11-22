module Print3Broken where

printSecond :: String -> IO ()
printSecond = putStrLn 

main :: IO ()
main = do
  putStrLn greeting
  printSecond greeting
  where greeting = "yarr"


