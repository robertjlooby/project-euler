---
title: Problem 9
---

---

A Pythagorean triplet is a set of three natural numbers, `a < b < c`, for which,

> -- a^2 + b^2 = c^2

For example, `3^2 + 4^2 = 9 + 16 = 25 = 5^2`.

There exists exactly one Pythagorean triplet for which `a + b + c = 1000`.

Find the product `abc`.

---

\begin{code}
module Problem9 where

import Data.List (find)

possibleSides :: [(Integer, Integer, Integer)]
possibleSides = [(a, b, getPossibleHypotenuse a b) | a <- [1..],
                                                     b <- [1..a]]
  where
    getPossibleHypotenuse a b = toInteger . round . sqrt . fromIntegral $ a ^ 2 + b ^ 2

pythagoreanTriplets :: [(Integer, Integer, Integer)]
pythagoreanTriplets = filter (\(a, b, c) -> a ^ 2 + b ^ 2 == c ^ 2) possibleSides

-- |
-- >>> answer
-- 31875000
answer :: Integer
answer = a' * b' * c'
  where
    Just (a', b', c') = find (\(a, b, c) -> a + b + c == 1000) pythagoreanTriplets
\end{code}
