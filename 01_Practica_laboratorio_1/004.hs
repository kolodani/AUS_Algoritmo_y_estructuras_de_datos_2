{-
4) Dar al menos dos ejemplos de funciones que tengan cada uno de los siguientes tipos:
a) (Int -> Int) -> Int
b) Int -> (Int -> Int)
c) (Int -> Int) -> (Int -> Int)
d) Int -> Bool
e) Bool -> (Bool -> Bool)
f) (Int,Char) -> Bool
g) (Int,Int) -> Int
h) Int -> (Int,Int)
i) a -> Bool
j) a -> a
-}

-- a) (Int -> Int) -> Int
-- funcion auxiliar para usar en el ejemplo a
auxiliarA :: Int -> Int
auxiliarA x = x + 1

sumar3A :: (Int -> Int) -> Int
sumar3A f = f 3

-- funcion auxiliar para usar en el ejemplo a
opuestoA :: Int -> Int
opuestoA x = -x

valorAbsolutoA :: (Int -> Int) -> Int
valorAbsolutoA f = f (-3)

-- b) Int -> (Int -> Int)
rectaB :: Int -> (Int, Int)
rectaB x = (x, 0)

potenciaB :: Int -> (Int, Int)
potenciaB x = (x, x*x)

-- c) (Int -> Int) -> (Int -> Int)
invertirC (a, b) = (b, a)







{-
d) Int -> Bool
e) Bool -> (Bool -> Bool)
f) (Int,Char) -> Bool
g) (Int,Int) -> Int
h) Int -> (Int,Int)
i) a -> Bool
j) a -> a
-}