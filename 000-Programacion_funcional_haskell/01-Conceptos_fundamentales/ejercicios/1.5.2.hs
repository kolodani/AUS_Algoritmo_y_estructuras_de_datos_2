{-
    1.5.2
    Definir una funcion abs:: Integer -> Integer que devuelva el valor absoluto
    de un entero.
-}

absoluto :: Integer -> Integer
absoluto n
    | n < 0     = (-1)*n
    | otherwise = n