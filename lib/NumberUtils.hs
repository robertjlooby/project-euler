module NumberUtils where

sumOfDigits :: Integer -> Integer
sumOfDigits = go 0
  where
    go sum n
      | div' == 0 = sum + mod'
      | otherwise = go (sum + mod') div'
      where
        (div', mod') = n `divMod` 10
