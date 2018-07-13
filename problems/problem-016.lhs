---
title: Problem 16
---

---

`2^15 = 32768` and the sum of its digits is `3 + 2 + 7 + 6 + 8 = 26`.

What is the sum of the digits of the number `2^1000`?

---

\begin{code}
module Problem16 where

sumOfDigits :: Integer -> Integer
sumOfDigits = go 0
  where
    go sum n
      | div' == 0 = sum + mod'
      | otherwise = go (sum + mod') div'
      where
        (div', mod') = n `divMod` 10


-- |
-- >>> answer
-- 1366
answer :: Integer
answer = sumOfDigits $ 2 ^ 1000
\end{code}
