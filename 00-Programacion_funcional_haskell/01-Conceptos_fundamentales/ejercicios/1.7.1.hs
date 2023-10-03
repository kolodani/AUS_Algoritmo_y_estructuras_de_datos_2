{-
    1.7.1
    Dar otra definicion de aumentar que satisfaga su especificacion:
        aumentar :: Integer -> Integer
        aumentar x > cuadrado x. siempre que x >= 0
-}

cuadrado:: Integer -> Integer
cuadrado x = x * x

aumentar :: Integer -> Integer
aumentar x
    | x >= 0 = cuadrado (x + 1)
    | otherwise = error "El numero es menor que cero, aumentar no puede ser aplicado"