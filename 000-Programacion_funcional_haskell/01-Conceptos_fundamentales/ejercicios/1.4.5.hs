{-
    1.4.5
    Dar ejemplos de funciones con los tipos siguientes:
    (Integer -> Integer) -> Integer
    (Integer -> Integer) -> (Integer -> Integer)
-}

suma3 :: Integer -> Integer
suma3 x = x + 3

-- (Integer -> Integer) -> Integer
funcion :: (Integer -> Integer) -> Integer
funcion f = f 6

-- (Integer -> Integer) -> (Integer -> Integer)
funcion2 :: (Integer -> Integer) -> (Integer -> Integer)
funcion2 f x = f (f x)