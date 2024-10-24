{-
    5) Definir las siguientes funciones usando listas por comprensión:
-}


-- a) 'divisors', que dado un entero positivo 'x' devuelve la
-- lista de los divisores de 'x' (o la lista vacía si el entero no es positivo)
divisors :: Int -> [Int]
divisors x = [y | y <- [1..x], x `mod` y == 0]


-- b) 'matches', que dados un entero 'x' y una lista de enteros descarta
-- de la lista los elementos distintos a 'x'
matches :: Int -> [Int] -> [Int]
matches x (y:ys) = [y | y <-(y:ys), y == x]


-- c) 'cuadrupla', que dado un entero 'n', devuelve todas las cuadruplas
-- '(a,b,c,d)' que satisfacen a^2 + b^2 = c^2 + d^2,
-- donde 0 <= a, b, c, d <= 'n'
cuadrupla :: Int -> [(Int, Int, Int, Int)]
cuadrupla x = [(a, b, c, d) | a <- [0..x], b <- [0..x], c <- [0..x], d <- [0..x], a^2 + b^2 == c^2 + d^2]


-- (d) 'unique', que dada una lista 'xs' de enteros, devuelve la lista
-- 'xs' sin elementos repetidos
unique :: [Int] -> [Int]
unique []     = []
unique [x]    = [x]
unique (x:xs) = x : unique [y | y <- xs, y /= x]

