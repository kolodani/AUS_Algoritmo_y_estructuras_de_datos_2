{-
    1.1.1
    Usando la funcion cuadrado, diseñar una funcion cuarta que eleva sus
    argumentos a la cuarta potencia
-}

cuadrado   :: Integer -> Integer
cuadrado x  = x * x

cuarta :: Integer -> Integer
cuarta x = (cuadrado x) * (cuadrado x)

cuartaB :: Integer -> Integer
cuartaB x = cuadrado (cuadrado x)

cuartaC :: Integer -> Integer
cuartaC x = x * x * x * x