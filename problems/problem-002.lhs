---
title: Problem 2
---

---

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

---

We can use a recursive function for this

\begin{code}
module Problem2 where

evenFibSum :: Integer -> Integer -> Integer -> Integer -> Integer
evenFibSum limit sum previousTerm currentTerm
    | currentTerm >= limit     = sum
    | currentTerm `mod` 2 == 0 = evenFibSum limit (sum + currentTerm) currentTerm (previousTerm + currentTerm)
    | otherwise                = evenFibSum limit sum currentTerm (previousTerm + currentTerm)

-- |
-- >>> answer
-- 4613732
answer :: Integer
answer = evenFibSum 4000000 0 1 2
\end{code}
