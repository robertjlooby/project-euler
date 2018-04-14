---
title: Problem 1
---

---

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

---

We can use a [list comprehension](https://wiki.haskell.org/List_comprehension) with a guard for this

\begin{code}
multiples = [ x | x <- [1..999],
                  x `mod` 3 == 0 || x `mod` 5 == 0 ]

-- |
-- >>> answer
-- 233168
answer = sum multiples

main = return answer
\end{code}
