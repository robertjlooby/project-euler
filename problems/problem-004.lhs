---
title: Problem 4
---

---

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

---

\begin{code}
module Problem4 where
\end{code}

Because multiplication is commutative (`x * y == y *x`), we only have to consider `x * y` where `y >= x`.

\begin{code}
threeDigitProducts :: [ Integer ]
threeDigitProducts = [ x * y | x <- [100..999],
                               y <- [x..999] ]

isPalindrome :: Integer -> Bool
isPalindrome num =
    str == reverse str
  where
    str = show num

palindromes :: [ Integer ]
palindromes = filter isPalindrome threeDigitProducts

-- |
-- >>> answer
-- 906609
answer :: Integer
answer = maximum palindromes
\end{code}
