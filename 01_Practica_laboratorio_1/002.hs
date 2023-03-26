{-
2. Definir las siguientes funciones y determinar su tipo:
-}

-- a) five, que dado cualquier valor, devuelve 5
five :: Num p1 => p2 -> p1
five a = 5

-- b) apply, que toma una función y un valor, y devuelve el resultado de
-- aplicar la función al valor dado
apply :: (t1 -> t2) -> t1 -> t2
apply f = f

-- c) identidad, la función identidad
identidad :: p -> p
identidad x = x

-- d) first, que toma un par ordenado, y devuelve su primera componente
first :: (a, b) -> a
first (x, y) = x

-- e) derive, que aproxima la derivada de una función dada en un punto dado
derive :: (Fractional a, Fractional t) => (t -> a) -> t -> a
derive f x = (f (x + 0.0001) - f x) / 0.0001

-- f) sign, la función signo
sign :: (Ord a, Num a) => a -> [Char]
sign x
    | x > 0 = "+"
    | x < 0 = "-"
    | otherwise = "x igual a cero, no tiene signo"

-- g) vabs, la función valor absoluto (usando sign y sin usarla)
-- sin usar la funcion sign
varsSin :: (Ord p, Num p) => p -> p
varsSin x
    | x < 0 = -x
    | otherwise = x

-- usando la funcion sign
varsCon :: Num p => (p -> [Char]) -> p -> p
varsCon f x
    | f x == "-" = -x
    | otherwise = x

-- h) pot, que toma un entero y un número, y devuelve el resultado de
-- elevar el segundo a la potencia dada por el primero
pot :: (Integral b, Num a) => b -> a -> a
pot x y = y ^ x

-- i) xor, el operador de disyunción exclusiva
xor :: Eq a => a -> a -> Bool
xor a b
    |a == b = False
    |otherwise = True

-- j) max3, que toma tres números enteros y devuelve el máximo entre ellos
-- funcion que recibe tres parametros y devuelve 1
max3 :: Ord a => a -> a -> a -> a
max3 a b c
    |a > b && a > c = a
    |b > a && b > c = b
    |otherwise = c

-- funcion max2 saca el mayor y luego la uso para comparar el tercer valor
max2 :: Ord p => p -> p -> p
max2 a b = if a > b then a else b

max3b :: Ord p => p -> p -> p -> p
max3b a b c = if max2 a b > c then max a b else c


---------------------------- POR RESOLVER --------------------------------------

{-
k) swap, que toma un par y devuelve el par con sus componentes invertidas
-}