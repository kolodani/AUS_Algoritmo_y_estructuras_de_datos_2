--Definir las siguientes funciones y determinar su tipo:


-- a) five, que dado cualquier valor, devuelve 5
five :: a -> Int
five x = 5


-- b) apply, que toma una función y un valor, y devuelve el resultado de
-- aplicar la función al valor dado
apply :: (a -> a) -> a -> a
apply f x = f x 


-- c) identidad, la función identidad
identidad :: (Num a) => a -> a
identidad x = x


-- d) first, que toma un par ordenado, y devuelve su primera componente
first :: (a, a) -> a
first (x, y) = x


-- e) derive, que aproxima la derivada de una función dada en un punto dado
derive :: (Fractional a, Fractional t) => (t -> a) -> t -> a
derive f x = (f(x + 0.00001) - (f x)) / 0.00001


-- f) sign, la función signo
sign :: Int -> Char
sign x
    | x > 0     = '+'
    | x < 0     = '-'
    | otherwise = '0'


-- g) vabs, la función valor absoluto (usando sign y sin usarla)
vabsCon :: Int -> Int
vabsCon x
    | sign x == '+' = x
    | otherwise     = -x

vabsSin :: Int -> Int
vabsSin x
    | x < 0     = -x
    | otherwise = x


-- h) pot, que toma un entero y un número, y devuelve el resultado de
-- elevar el segundo a la potencia dada por el primero
pot :: Int -> Float -> Float
pot a x = x^a


-- i) xor, el operador de disyunción exclusiva
xor :: Bool -> Bool -> Bool
xor x y
    | x == y    = False
    | otherwise = True


-- j) max3, que toma tres números enteros y devuelve el máximo entre ellos
max3 :: Int -> Int -> Int -> Int
max3 x y z
    | x > y && x > z = x
    | y > z          = y
    | otherwise      = z


-- k) swap, que toma un par y devuelve el par con sus componentes invertidas
swap :: (Int, Int) -> (Int, Int)
swap (x, y) = (y, x)

