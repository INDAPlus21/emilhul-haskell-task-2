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
    vowels = "aeiou"

karpsravor :: String -> String
karpsravor [] = []
karpsravor (x : y : z : xs)
  | y `elem` o && x == z = x : karpsravor xs
  | otherwise = x : karpsravor (y : z : xs)
  where
    o = "o"

medellangd :: String -> Double
medellangd [] = 0
medellangd x =
  fromIntegral (sum (map length (words (allowedChar x))))
    / fromIntegral (length (words (allowedChar x)))
  where
    allowedChar :: String -> String
    allowedChar [] = []
    allowedChar (x : xs)
      | x `elem` letters = x : allowedChar xs
      | otherwise = ' ' : allowedChar xs
    letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

skyffla :: [a] -> [a]
skyffla [] = []
skyffla (x : xs) = concat (second (x : xs) : [skyffla (second xs)])
  where
    second :: [a] -> [a]
    second [] = []
    second (x : y : xs) = x : second xs
    second (x : xs) = [x]
