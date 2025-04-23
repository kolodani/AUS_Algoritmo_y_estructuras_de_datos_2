{-
8) Redefinir las funciones del ejercicio anterior usando foldr, map y filter.
ver su definición en https://hoogle.haskell.org/
-}

-- a) 'suma', que suma todos los elementos de una lista de números
-- suma :: [Int] -> Int
-- suma [] = 0
-- suma (x : xs) = x + suma xs

suma :: [Int] -> Int
suma xs = foldr (+) 0 xs

-- b) 'alguno', que devuelve True si algún elemento de una
--    lista de valores booleanos es True, y False en caso
--    contrario
-- alguno :: [Bool] -> Bool
-- alguno [] = False
-- alguno (x : xs) = x || alguno xs

alguno :: [Bool] -> Bool
alguno xs = foldr (||) False xs

-- c) 'todos', que devuelve True si todos los elementos de
--    una lista de valores booleanos son True, y False en caso
--    contrario
-- todos :: [Bool] -> Bool
-- todos [] = True
-- todos (x : xs) = x && todos xs

todos :: [Bool] -> Bool
todos xs = foldr (&&) True xs

-- d) 'codes', que dada una lista de caracteres, devuelve la
--    lista de sus ordinales
-- codes :: [Char] -> [Int]
-- codes [] = []
-- codes (x : xs) = deslistar [i | (c, i) <- ordinales, x == c] : codes xs
-- ordinales :: [(Char, Int)]
-- ordinales = zip ['a' .. 'z'] [1 ..]
-- deslistar :: [Int] -> Int
-- deslistar [x] = x

codigos :: [Char] -> [Int]
codigos xs = map ((+ (-96)) . fromEnum) xs

-- e) 'restos', que calcula la lista de los restos de la
--    división de los elementos de una lista de números dada por otro
--    número dado
-- restos :: Int -> [Int] -> [Int]
-- restos 0 _ = []
-- restos r [] = []
-- restos r (x : xs) = restadores r x : restos r xs
-- restadores :: Int -> Int -> Int
-- restadores r x
--   | x >= r = restadores r (x - r)
--   | x < r = x

restos :: Int -> [Int] -> [Int]
restos n xs = map (`mod` n) xs

-- f) 'cuadrados', que dada una lista de números, devuelva la
--    lista de sus cuadrados
-- cuadrados :: [Int] -> [Int]
-- cuadrados [] = []
-- cuadrados (x : xs) = x ^ 2 : cuadrados xs

cuadrados :: [Int] -> [Int]
cuadrados xs = map (^2) xs

-- g) 'longitudes', que dada una lista de listas, devuelve la
--    lista de sus longitudes
-- longitudes :: [[Int]] -> [Int]
-- longitudes [[]] = [0]
-- longitudes (x : xs) = longitud x : longitudes xs
-- longitud :: (Num a1) => [a2] -> a1
-- longitud [] = 0
-- longitud (x : xs) = 1 + longitud xs

longitudes :: [[Int]] -> [Int]
longitudes xs = map length xs

-- h) 'orden', que dada una lista de pares de números, devuelve
--    la lista de aquellos pares en los que la primera componente es
--    menor que el triple de la segunda
-- orden :: [(Int, Int)] -> [(Int, Int)]
-- orden [] = []
-- orden ((x, y) : xs)
--   | x < 3 * y = (x, y) : orden xs
--   | otherwise = orden xs

orden :: [(Int, Int)] -> [(Int, Int)]
orden xs = filter (\(x, y) -> x < 3 * y) xs

-- i) 'pares', que dada una lista de enteros, devuelve la lista
--    de los elementos pares
-- pares :: [Int] -> [Int]
-- pares [] = []
-- pares (x : xs) = if par x then x : pares xs else pares xs
-- par :: Int -> Bool
-- par 0 = True
-- par 1 = False
-- par x = par (x - 2)

pares :: [Int] -> [Int]
pares xs = filter (\x -> x `mod` 2 == 0) xs

-- j) 'letras', que dada una lista de caracteres, devuelve la
-- lista de aquellos que son letras (minúsculas o mayúsculas)
-- letras :: [Char] -> [Char]
-- letras [] = []
-- letras (x : xs) = if pertenece x caracteres then x : letras xs else letras xs
-- caracteres :: [Char]
-- caracteres = ['a' .. 'z'] ++ ['A' .. 'Z']
-- pertenece :: (Eq t) => t -> [t] -> Bool
-- pertenece c [] = False
-- pertenece c (x : xs) = if c == x then True else pertenece c xs

letras :: [Char] -> [Char]
letras [] = []
letras (x : xs) = filter (\x -> x >= 'a' && x <= 'z' || x >= 'A' && x <= 'Z') xs

-- k) 'masDe', que dada una lista de listas 'xss' y un
--    número 'n', devuelve la lista de aquellas listas de 'xss'
--    con longitud mayor que 'n'
-- masDe :: (Ord t, Num t) => [[a2]] -> t -> [[a2]]
-- masDe [] n = []
-- masDe (x : xs) n = if longitud x > n then x : masDe xs n else masDe xs n

masDe :: Foldable t => [t a] -> Int -> [t a]
masDe (x : xs) n = filter (\x -> length x > n) xs

{-
------------------------------- TERMINAR ---------------------------------------
como se usamos estas funciones:
foldr :: (a -> b -> b) -> b -> [a] -> b
map :: (a -> b) -> [a] -> [b]
filter :: (a -> Bool) -> [a] -> [a]

ejemplo de uso:
foldr (+) 0 [1,2,3,4,5] -- 15
map (+1) [1,2,3,4,5] -- [2,3,4,5,6]
filter (>3) [1,2,3,4,5] -- [4,5]
-}
