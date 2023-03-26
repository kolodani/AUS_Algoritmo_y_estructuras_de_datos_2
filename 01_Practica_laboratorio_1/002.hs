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
    | x > 0 = "signo positivo +"
    | x < 0 = "signo negativo -"
    | otherwise = "x igual a cero, no tiene signo"

---------------------------- POR RESOLVER --------------------------------------

{-

g) vabs, la función valor absoluto (usando sign y sin usarla)

h) pot, que toma un entero y un número, y devuelve el resultado de
elevar el segundo a la potencia dada por el primero

i) xor, el operador de disyunción exclusiva

j) max3, que toma tres números enteros y devuelve el máximo entre llos

k) swap, que toma un par y devuelve el par con sus componentes invertidas
-}