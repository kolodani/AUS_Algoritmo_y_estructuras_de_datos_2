{-
2. Definir las siguientes funciones y determinar su tipo:
-}

-- a) five, que dado cualquier valor, devuelve 5
five :: (Num a) => p -> a
five x = 5

-- b) apply, que toma una función y un valor, y devuelve el resultado de
-- aplicar la función al valor dado
apply :: (t1 -> t2) -> t1 -> t2
apply f x = f x

-- c) identidad, la función identidad
identidad :: a -> a
identidad x = x

-- d) first, que toma un par ordenado, y devuelve su primera componente
first :: (a, b) -> a
first (x, y) = x

-- e) derive, que aproxima la derivada de una función dada en un punto dado
derive :: (Fractional a, Fractional t) => (t -> a) -> t -> a
derive f x = (f (x + 0.00001) - f x) / 0.00001

-- f) sign, la función signo
sign :: (Ord a1, Num a1, Num a2) => a1 -> a2
sign x
  | x > 0 = 1
  | x < 0 = -1
  | otherwise = 0

-- g) vabs, la función valor absoluto (usando sign y sin usarla)
vabsign :: (Ord a, Num a) => a -> a
vabsign x
  | sign x == (-1) = -x
  | otherwise = x

vabs :: (Ord a, Num a) => a -> a
vabs x
  | x < 0 = -x
  | otherwise = x

-- h) pot, que toma un entero y un número, y devuelve el resultado de
-- elevar el segundo a la potencia dada por el primero
pot :: (Integral i, Num w) => i -> w -> w
pot a x = x ^ a

-- i) xor, el operador de disyunción exclusiva
xor :: (Eq a) => a -> a -> Bool
xor a b
  | a == b = False
  | otherwise = True

-- j) max3, que toma tres números enteros y devuelve el máximo entre ellos
max3 :: (Ord a) => a -> a -> a -> a
max3 a b c
  | a > b && a > c = a
  | b > a && b > c = b
  | otherwise = c

-- k) swap, que toma un par y devuelve el par con sus componentes invertidas
swap :: (b, a) -> (a, b)
swap (a, b) = (b, a)
