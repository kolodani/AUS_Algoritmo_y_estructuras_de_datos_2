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
addB :: Int -> (Int -> Int)
addB x y = x + y

productoB :: Int -> (Int -> Int)
productoB x y = x * y

-- c) (Int -> Int) -> (Int -> Int)
-- funcion auxiliar para usar en el ejemplo c
auxiliarC :: Int -> Int
auxiliarC x = x * 2

ejemploC :: (Int -> Int) -> (Int -> Int)
ejemploC f x = f (f x)

-- funcion auxiliar para usar en el ejemplo c
potenciaC :: Int -> Int
potenciaC x = x * x

ejemC :: (Int -> Int) -> (Int -> Int)
ejemC f x = f (f x) * 3

-- d) Int -> Bool
esParD :: Int -> Bool
esParD x = if x `mod` 2 == 0 then True else False

esPositivoD:: Int -> Bool
esPositivoD x = if x > 0 then True else False

-- e) Bool -> (Bool -> Bool)
andE :: Bool -> (Bool -> Bool)
andE x y = x && y

orE :: Bool -> (Bool -> Bool)
orE x y = x || y

{-
f) (Int,Char) -> Bool
g) (Int,Int) -> Int
h) Int -> (Int,Int)
i) a -> Bool
j) a -> a
-}