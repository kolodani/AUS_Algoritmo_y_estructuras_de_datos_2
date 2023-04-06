{-
6) El producto escalar de dos listas de enteros de igual longitud
es la suma de los productos de los elementos sucesivos (misma
posición) de ambas listas.  Definir una función 'scalarProduct' que
devuelva el producto escalar de dos listas.

Sugerencia: Usar las funciones 'zip' y 'sum'.
-}

juntar :: [a] -> [b] -> [(a, b)]
juntar xs ys = zip xs ys

sumar :: Num a => [(a, a)] -> a
sumar xs = sum [x * y | (x, y) <- xs]

scalarProduct :: Num a => [a] -> [a] -> a
scalarProduct xs ys = sumar (juntar xs ys)

-- segundo metodo
scalarProduct2 :: Num a => [a] -> [a] -> a
scalarProduct2 xs ys = sum [x * y | (x, y) <- zip xs ys]

{-
    juntar xs ys = zip xs ys
    juntar toma dos listas y las une en una lista de tuplas
    juntar [1,2,3] [4,5,6] = [(1,4),(2,5),(3,6)]

    sumar xs = sum [x*y | (x,y) <- xs]
    sumar toma una lista de tuplas y devuelve la suma de los productos de sus elementos
    sumar [(1,4),(2,5),(3,6)] = 1*4 + 2*5 + 3*6 = 32

    scalarProduct xs ys = sumar (juntar xs ys)
    scalarProduct toma dos listas y devuelve el producto escalar de ambas
    scalarProduct [1,2,3] [4,5,6] = sumar (juntar [1,2,3] [4,5,6]) = sumar [(1,4),(2,5),(3,6)] = 32
-}