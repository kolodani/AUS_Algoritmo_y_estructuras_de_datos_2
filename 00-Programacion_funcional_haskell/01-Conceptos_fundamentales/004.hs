cuadrado :: Integer -> Integer
cuadrado x = x * x

cuarta :: Integer -> Integer
cuarta x = cuadrado (cuadrado x)

cuarta' :: Integer -> Integer
cuarta' x = (cuadrado . cuadrado) x

cuarta'' :: Integer -> Integer
cuarta'' = cuadrado . cuadrado

twice :: (Integer -> Integer) -> (Integer -> Integer)
twice f x = f (f x)

cuartaT :: Integer -> Integer
cuartaT = twice cuadrado
