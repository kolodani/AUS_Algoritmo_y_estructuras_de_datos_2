cuadrado   :: Integer -> Integer
cuadrado x  = x * x

minimo      :: (Integer, Integer) -> Integer
minimo(x,y)  = if x <= y then x else y

cuadradoF :: Float -> Float
cuadradoF x = x * x

delta :: (Float, Float, Float) -> Float
delta (a, b, c) = sqrt((cuadradoF b) - 4 *a * c)