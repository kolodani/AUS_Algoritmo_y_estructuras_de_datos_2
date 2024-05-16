{-
6) El producto escalar de dos listas de enteros de igual longitud
es la suma de los productos de los elementos sucesivos (misma
posición) de ambas listas. Definir una función 'scalarProduct' que
devuelva el producto escalar de dos listas.

Sugerencia: Usar las funciones 'zip' y 'sum'.
-}
scalarProduct:: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x * y | (x,y) <- zip xs ys]

-- como funciona scalarProduct, es una funcion que recibe dos listas de enteros y devuelve un entero
-- primero se usa zip para juntar los elementos de las dos listas en tuplas, lo que nos da como
-- resultado una lista de tuplas
-- luego se usa una lista por comprension para multiplicar los elementos de las tuplas, lo que nos
-- da como resultado una lista de enteros
-- finalmente se usa sum para sumar los elementos de la lista de enteros, lo que nos da como resultado
-- un entero