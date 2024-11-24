-- ex04 rev
join :: ([a], [a]) -> [a]
join ([],ls) = ls
join(x:xs,ls) = x: join (xs,ls)

rev :: [a] -> [a]
rev [] = []
rev(x:xs) = join(rev xs,[x])

-- how long does join take? answer in terms of big-O of the size of each input list
--      O(n)
-- how long does your rev take to compute the reverse of a list answer in terms of big-O of the size of the list, and briefly explain why are you satisfied with the running time?
--      O(n^2) / No, O(n^2) is inefficient for reversing large lists 
--if not, what would you like to do to improve the efficiency?
--      Avoiding the use of join.

-- ex04 fib
fib :: Integral p => p -> p -- type of Integral
fib n
  | n < 0     = error "Pls input a non-negative integer"
  | n == 0    = 0
  | n == 1    = 1
  | otherwise = fib (n-1) + fib (n-2)
-- how long does your fib take to compute fib n? answer in terms of big-O of n, and briefly explain why
--      O(2^n) / fib n makes two recursive calls so many computations are repeated.
-- are you satisfied with the running time? if not, what would you like to do to improve the efficiency?
--      No, O(2^n) is inefficient for large n .
--      Store previously calculated values to avoid redundant computations