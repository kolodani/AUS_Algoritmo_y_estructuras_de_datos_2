{-
5) Definir las siguientes funciones usando listas por comprensión:
-}

-- a) 'divisors', que dado un entero positivo 'x' devuelve la
-- lista de los divisores de 'x' (o la lista vacía si el entero no es positivo)
divisores :: Int -> [Int]
divisores x = [y | y <- [1 .. x], x `mod` y == 0]

-- b) 'matches', que dados un entero 'x' y una lista de enteros descarta
-- de la lista los elementos distintos a 'x'
matches :: Int -> [Int] -> [Int]
matches x ys = [y | y <- ys, y == x]

-- c) 'cuadrupla', que dado un entero 'n', devuelve todas las cuadruplas
-- '(a,b,c,d)' que satisfacen a^2 + b^2 = c^2 + d^2,
-- donde 0 <= a, b, c, d <= 'n'
cuadrupla :: Int -> [(Int, Int, Int, Int)]
cuadrupla n = [(a, b, c, d) | a <- [0 .. n], b <- [0 .. n], c <- [0 .. n], d <- [0 .. n], a ^ 2 + b ^ 2 == c ^ 2 + d ^ 2]

-- d) 'unique', que dada una lista 'xs' de enteros, devuelve la lista
-- 'xs' sin elementos repetidos
-- unique :: [Int] -> [Int]
unique :: [Int] -> [Int]
unique [] = []
unique [x] = [x]
unique (x : xs) = x : [y | y <- xs, y /= x]
