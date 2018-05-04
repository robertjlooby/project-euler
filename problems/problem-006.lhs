---
title: Problem 6
---

---

The sum of the squares of the first ten natural numbers is,

> -- 1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,

> -- (1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

---

\begin{code}
module Problem6 where

numbers :: [ Integer ]
numbers = [1..100]

sumOfTheSquares :: Integer
sumOfTheSquares = sum $ fmap (^ 2) numbers

squareOfTheSums :: Integer
squareOfTheSums = sum numbers ^ 2

-- |
-- >>> answer
-- 25164150
answer :: Integer
answer = squareOfTheSums - sumOfTheSquares
\end{code}
