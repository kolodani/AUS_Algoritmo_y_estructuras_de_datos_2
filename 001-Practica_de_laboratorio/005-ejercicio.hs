{-
5) Definir las siguientes funciones usando listas por comprensión:
-}

-- a) 'divisors', que dado un entero positivo 'x' devuelve la
-- lista de los divisores de 'x' (o la lista vacía si el entero no es positivo)
divisors :: (Integral a) => a -> [a]
divisors n = [x | x <- [1 .. n], n `mod` x == 0]

-- b) 'matches', que dados un entero 'x' y una lista de enteros descarta
-- de la lista los elementos distintos a 'x'
matches :: Int -> [Int] -> [Int]
matches x ys = [y | y <- ys, y == x]

-- c) 'cuadrupla', que dado un entero 'n', devuelve todas las cuadruplas
-- '(a,b,c,d)' que satisfacen a^2 + b^2 = c^2 + d^2,
-- donde 0 <= a, b, c, d <= 'n'
cuadrupla :: Int -> [(Int,Int,Int,Int)]
cuadrupla n = [(a, b, c, d) | a <- [0 .. n], b <- [0 .. n], c <- [0 .. n], d <- [0 .. n], a ^ 2 + b ^ 2 == c ^ 2 + d ^ 2]

-- (d) 'unique', que dada una lista 'xs' de enteros, devuelve la lista
-- 'xs' sin elementos repetidos
-- unique :: [Int] -> [Int]
unique :: [Int] -> [Int]
unique [] = []
unique [x] = [x]
unique (x:xs) = x : unique [y | y <- xs, y /= x]

-- las listas por comprension se componen de tres partes:
-- 1) la expresion que se va a evaluar
-- 2) la variable que se va a usar
-- 3) la lista de la que se va a tomar los valores
-- por ejemplo:
-- [x | x `mod` 2 == 0, x <- [1..10]]
-- en este caso la expresion es x, la variable es x y la lista es [1..10]
-- esto da como resultado una lista con los numeros pares del 1 al 10
-- [2,4,6,8,10]
-- podemos agregar mas condiciones a la lista por comprension
-- [x | x `mod` 2 == 0, x `mod` 3 == 0, x <- [1..10]]
-- esto nos daria la lista [6] ya que es el unico elemento que cumple ambas condiciones