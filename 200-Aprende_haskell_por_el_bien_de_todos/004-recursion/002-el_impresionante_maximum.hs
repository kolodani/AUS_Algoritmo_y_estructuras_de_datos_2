maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximo de una listo vicia"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise   = maxTail
    where maxTail = maximum' xs






