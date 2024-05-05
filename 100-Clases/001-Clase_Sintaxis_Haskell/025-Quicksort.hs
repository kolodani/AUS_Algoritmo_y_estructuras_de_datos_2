{-
    Quicksort
-}

-- el algoritmo de ordenacion quicksort:
-- implementacion en haskell

qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x : xs) = qsort chicos ++ [x] ++ qsort grandes
  where
    chicos = [a | a <- xs, a <= x]
    grandes = [b | b <- xs, b > x]