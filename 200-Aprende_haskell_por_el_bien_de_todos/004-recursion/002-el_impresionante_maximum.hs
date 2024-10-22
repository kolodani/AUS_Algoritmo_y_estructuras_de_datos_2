maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximo de una listo vicia"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise   = maxTail
    where maxTail = maximum' xs

maximum2' :: (Ord a) => [a] -> a
maximum2' []     = error "Maximo de una lista vacia"
maximum2' [x]    = x
maximum2' (x:xs) = x `max` (maximum2' xs)

