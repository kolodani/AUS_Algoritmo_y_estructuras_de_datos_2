f :: (Float, Float) -> Float
f(x,y) = (a + 1) * (a + 2)
    where a = (x + y) / 2

f' :: (Float, Float) -> Float
f' (x,y) = (a + 1) * (b + 2)
    where   a = (x + y) / 2
            b = (x + y) / 3

f'' :: (Float, Float) -> Float
f'' (x,y) = (a + 1) * (b + 2)
    where a = (x + y) / 2; b = (x + y) / 3


g :: Integer -> Integer -> Integer
g x y
    | x <= 10 = x + a
    | x > 10  = x - a
    where a = cuadrado (y + 1)
