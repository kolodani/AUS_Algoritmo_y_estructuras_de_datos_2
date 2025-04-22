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
-- la funcion que se esta definiendo toma como parametro una funcion que recibe un entero y devuelve un entero y por
-- ultimo devuelve un entero
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
-- la funcion que se esta definiendo toma como parametro un entero y devuelve una funcion que recibe un entero y
-- devuelve un entero
addB :: Int -> (Int -> Int)
addB x y = x + y

productoB :: Int -> (Int -> Int)
productoB x y = x * y

-- c) (Int -> Int) -> (Int -> Int)
-- la funcion que se esta definiendo toma como parametro una funcion que recibe un entero y devuelve un entero y
-- devuelve una funcion que recibe un entero y devuelve un entero
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
-- la funcion que se esta definiendo toma como parametro un entero y devuelve un booleano
esParD :: Int -> Bool
esParD x = if x `mod` 2 == 0 then True else False

esPositivoD :: Int -> Bool
esPositivoD x = if x > 0 then True else False

-- e) Bool -> (Bool -> Bool)
-- la funcion que se esta definiendo toma como parametro un booleano y devuelve una funcion que recibe un booleano y
-- devuelve un booleano
andE :: Bool -> (Bool -> Bool)
andE x y = x && y

orE :: Bool -> (Bool -> Bool)
orE x y = x || y

-- f) (Int,Char) -> Bool
-- la funcion que se esta definiendo toma como parametro una tupla de un entero y un caracter y devuelve un booleano
ejemF :: (Int, Char) -> Bool
ejemF (x, y)
  | x == 10 && y == 'a' = True
  | otherwise = False

turnosF :: (Int, Char) -> Bool
turnosF (x, y)
  | x > 7 && x < 19 && y /= 'D' = True
  | otherwise = False

-- g) (Int,Int) -> Int
-- la funcion que se esta definiendo toma como parametro una tupla de dos enteros y devuelve un entero
sumaG :: (Int, Int) -> Int
sumaG (x, y) = x + y

potenG :: (Int, Int) -> Int
potenG (x, y) = x ^ y

-- h) Int -> (Int,Int)
-- la fincion que se esta definiendo toma como parametro una tupla de dos enteros y devuelve un entero
alPlanoH :: Int -> (Int, Int)
alPlanoH x = (x, 2 * x)

alCuboH :: Int -> (Int, Int)
alCuboH x = (x, x ^ 3)

-- i) a -> Bool
-- la funcion que se esta definiendo toma como parametro un valor de cualquier tipo y devuelve un booleano
esVerdadI :: a -> Bool
esVerdadI x = True

esFalsoI :: a -> Bool
esFalsoI x = False

-- j) a -> a
-- la funcion que se esta definiendo toma como parametro un valor de cualquier tipo y devuelve un valor de cualquier
-- tipo
identidadJ :: a -> a
identidadJ x = x

ejemJ :: a -> a
ejemJ x = x
