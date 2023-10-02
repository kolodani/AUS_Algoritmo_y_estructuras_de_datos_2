cuadrado :: Integer -> Integer
cuadrado x = x * x

cuarta :: Integer -> Integer
cuarta x = cuadrado (cuadrado x)

cuarta' :: Integer -> Integer
cuarta' x = (cuadrado . cuadrado) x

cuarta'' :: Integer -> Integer
cuarta'' = cuadrado . cuadrado