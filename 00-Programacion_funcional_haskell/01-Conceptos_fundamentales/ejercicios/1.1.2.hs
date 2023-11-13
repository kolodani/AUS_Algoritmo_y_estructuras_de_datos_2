{-
    1.1.2
    definir una funcion maximo que devuelve el mayor de sus dos argumentos.
-}

mayor :: Integer -> Integer -> Integer
mayor a b = if a >= b then a else b

mayorB :: (Integer, Integer) -> Integer
mayorB (a, b) = if a >= b then a else b

mayorC :: Integer -> Integer -> Integer
mayorC a b
    | a >= b    = a
    | otherwise = b
