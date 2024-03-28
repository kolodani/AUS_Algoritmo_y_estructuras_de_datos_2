minimo :: (Integer, Integer) -> Integer
minimo (x, y) = if x < y then x else y

minimo' :: (Integer, Integer) -> Integer
minimo' (x, y)
    | x <= y = x
    | x > y  = y