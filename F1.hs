module F1 where

fib :: Integer -> Integer
fib 1 = 0
fib 2 = 1
fib n = fib' (n - 2) (fib 1) (fib 2)
  where
    fib' 0 x y = x + y
    fib' i x y = fib' (i - 1) y (x + y)

rovarsprak :: String -> String
rovarsprak [] = []
rovarsprak (x : xs)
  | x `elem` vowels = x : rovarsprak xs
  | otherwise = x : 'o' : x : rovarsprak xs
  where
    vowels = ['a', 'e', 'i', 'o', 'u']

karpsravor :: String -> String
karpsravor [] = []
karpsravor (x : y : z : xs)
  | y `elem` o && x == z = x : karpsravor xs
  | otherwise = x : karpsravor (y : z : xs)
  where
    o = ['o']