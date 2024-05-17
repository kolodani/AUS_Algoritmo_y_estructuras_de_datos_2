{-
2. Definir usando listas por comprensión las funciones:
-}

-- a) cambios : [a] → [Int], que dada una lista, devuelve la lista de los ı́ndices en que la lista
-- cambia. Es decir, dada la lista s retorna la lista con los i tal que si != si+1
-- cambios [1, 1, 1, 3, 3, 1, 1] = [2, 4]

cambios :: [Int] -> [Int]
cambios xs = [i | (x, i) <- zip xs [0 ..], (y, j) <- zip (tail xs) [0 ..], x /= y && i == j]

-- primero para realizar esa lista de cambios, haremos lo siguiente, primero tomaremos el segundo valor de la tupla que
-- creamos con zip, y usando como parametro la lista original, y una lisata que va de 0 a n
-- lo que nos da como resultado
-- zip [1, 1, 1, 3, 3, 1, 1] [0, 1, 2, 3, 4, 5, 6] = [(1,0),(1,1),(1,2),(3,3),(3,4),(1,5),(1,6)]
-- luego hacemos otro zip, pero esta vez con la lista original sin el primer valor, y una lista que va de 0 a n
-- lo que nos da como resultado
-- zip [1, 1, 3, 3, 1, 1] [0, 1, 2, 3, 4, 5] = [(1,0),(1,1),(3,2),(3,3),(1,4),(1,5)]
-- luego con la lista de tuplas que creamos, lo que hacemos es comparar si los valores de la lista son distintos, y si
-- los indices son iguales, lo que nos dice esto es que los valores consecutivos son distintos, que hubo un cambio
-- lo que significa que guardamos es valor
-- lo que nos da como resutlado
-- [2, 4]

-- b) oblongoNumber :: [Int] que genera la lista de los números oblongos. Un número es oblongo
-- si es el producto de dos naturales consecutivos. Por ejemplo, los números [2, 6, 12, 20, ...]

oblongoNumber :: [Int]
oblongoNumber = [x | x <- [1 .. 1000], i <- [1 .. 1000], x == i * (i + 1)]

-- primero hacemos dos listas de numeros que van de 1 a 1000, y luego usamos la condicion de que un numero tendra que
-- ser igual al producto de dos numeros consecutivos

-- c) abundantes :: [Integer] que es la lista de todos los números abundantes. Un número natural
-- n se denomina abundante si es menor que la suma de sus divisores propios. Por ejemplo, 12
-- y 30 son abundantes pero 5 y 28 no lo son. Por ejemplo abundates = [12, 18, 20, 24, 30, 36, ...

abundantes :: [Integer]
abundantes = [x | x <- [1 ..], sum (divisores x) > x]
  where
    divisores x = [y | y <- [2 .. (x - 1)], x `mod` y == 0]

-- primero hacemos una lista de numeros que van de 1 a n, y luego hacemos una lista de divisores de numeros que van de 2
-- a n - 1, y luego sumamos los divisores de los numeros, y si la suma de los divisores es mayor que el numero,
-- lo guardamos en la lista, lo que nos da como resultado
-- [12, 18, 20, 24, 30, 36, ...]

-- d) eco que devuelve la cadena obtenida a partir de la cadena xs repitiendo cada elemento tantas
-- veces como indica su posición. No usar listas por comprensión. Por ejemplo: eco "hola" =
-- "hoolllaaaa"

eco :: [Char] -> [Char]
eco xs = foldr (++) [] (map (\(c, i) -> reververar (c, i)) (transformador xs))

transformador :: [Char] -> [(Char, Int)]
transformador xs = zip xs [1 ..]

reververar :: (Char, Int) -> [Char]
reververar (_, 0) = []
reververar (c, i) = c : reververar (c, i - 1)

-- ahora lo hacemos pero con listas por comprension
eco2 :: [Char] -> [Char]
eco2 xs = [c | (c, i) <- zip xs [1 ..], j <- [1 .. i]]

-- con listas por comprension, lo hacemos de manera mas sensilla
-- primero hacemos zip de la lista original, y una lista que va de 1 a n
-- lo que nos da como resultado
-- zip "hola" [1, 2, 3, 4] = [('h',1),('o',2),('l',3),('a',4)]
-- luego de eso, luego tomas las tuplas que creamos, y con una lista que va de 1 a n, repetimos el valor de la tupla
-- lo que nos da como resultado
-- [(h, 1), (o, 1), (o, 2), (l, 1), (l, 2), (l, 3), (a, 1), (a, 2), (a, 3), (a, 4)]
-- y luego con la lista de tuplas que creamos, lo que hacemos es tomar el primer valor de la tupla, y lo guardamos
-- lo que nos da como resultado
-- "hoolllaaaa"

-- e) euler :: Int → Int tal que euler n es la suma de todos los múltiplos de 3 ó 5 menores que n.
-- Por ejemplo, euler 10 = 23. Puedes usar sin definir la función sum que suma los elementos
-- de una lista.

euler :: Int -> Int
euler n = sum [x | x <- [1 .. n - 1], x `mod` 3 == 0 || x `mod` 5 == 0]

-- tomamos primero una lista de numeros que van de 1 a n - 1, y luego tomamos los numeros que son multiplos de 3 o 5
-- para nuestra lista, y luego sumamos los valores de la lista, lo que nos da como resultado
-- euler 10 = 23

-- f ) expandir :: [Int] → [Int] que reemplace en una lista de números positivos cada número n por
-- n copias de sı́ mismo:
-- Ejemplo: expandir [3, 4, 2] = [3, 3, 3, 4, 4, 4, 4, 2, 2]

duplicador :: [Int] -> [(Int, Int)]
duplicador xs = zip xs xs

multiple :: (Int, Int) -> [Int]
multiple (_, 0) = []
multiple (x, y) = x : multiple (x, y - 1)

expandir :: [Int] -> [Int]
expandir xs = foldr (++) [] (map (\(x, y) -> multiple (x, y)) (duplicador xs))

-- ahora lo hacemos pero con listas por comprension
expandir2 :: [Int] -> [Int]
expandir2 xs = [x | x <- xs, y <- [1 .. x]]

-- expandir2, lo que hace es muy sencillo, primero toma los valores de la lista original, y luego los agrega la cantidad
-- de veces que indica dicho valor, por ejemplo, si el valor es 3, lo agrega 3 veces
-- lo que nos da como resultado
-- [3, 3, 3, 4, 4, 4, 4, 2, 2]