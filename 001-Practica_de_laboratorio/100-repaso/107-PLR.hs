{-
7) Sin usar funciones definidas en el
preludio, defina recursivamente las siguientes funciones y
determine su tipo más general:
-}

-- a) 'suma', que suma todos los elementos de una lista de números
suma :: [Int] -> Int
suma [] = 0
suma (x : xs) = x + suma xs

-- b) 'alguno', que devuelve True si algún elemento de una
-- lista de valores booleanos es True, y False en caso
-- contrario
alguno :: [Bool] -> Bool
alguno [] = False
alguno (x : xs) = x || alguno xs

-- c) 'todos', que devuelve True si todos los elementos de
-- una lista de valores booleanos son True, y False en caso
-- contrario
todos :: [Bool] -> Bool
todos [] = True
todos (x : xs) = x && todos xs

-- d) 'codes', que dada una lista de caracteres, devuelve la
-- lista de sus ordinales
codes :: [Char] -> [Int]
codes [] = []
codes (x : xs) = deslistar [i | (c, i) <- ordinales, x == c] : codes xs

ordinales :: [(Char, Int)]
ordinales = zip ['a' .. 'z'] [1 ..]

deslistar :: [Int] -> Int
deslistar [x] = x

-- e) 'restos', que calcula la lista de los restos de la
-- división de los elementos de una lista de números dada por otro
-- número dado
restos :: Int -> [Int] -> [Int]
restos 0 _ = []
restos r [] = []
restos r (x : xs) = restadores r x : restos r xs

restadores :: Int -> Int -> Int
restadores r x
  | x >= r = restadores r (x - r)
  | x < r = x

-- f) 'cuadrados', que dada una lista de números, devuelva la
-- lista de sus cuadrados
cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x : xs) = x ^ 2 : cuadrados xs

-- g) 'longitudes', que dada una lista de listas, devuelve la
-- lista de sus longitudes
longitudes :: [[Int]] -> [Int]
longitudes [[]] = [0]
longitudes (x : xs) = longitud x : longitudes xs

longitud :: (Num a1) => [a2] -> a1
longitud [] = 0
longitud (x : xs) = 1 + longitud xs

-- h) 'orden', que dada una lista de pares de números, devuelve
-- la lista de aquellos pares en los que la primera componente es
-- menor que el triple de la segunda
orden :: [(Int, Int)] -> [(Int, Int)]
orden [] = []
orden ((x, y) : xs)
  | x < 3 * y = (x, y) : orden xs
  | otherwise = orden xs

-- i) 'pares', que dada una lista de enteros, devuelve la lista
-- de los elementos pares
pares :: [Int] -> [Int]
pares [] = []
pares (x : xs) = if par x then x : pares xs else pares xs

par :: Int -> Bool
par 0 = True
par 1 = False
par x = par (x - 2)

-- j) 'letras', que dada una lista de caracteres, devuelve la
-- lista de aquellos que son letras (minúsculas o mayúsculas)

letras :: [Char] -> [Char]
letras [] = []
letras (x : xs) = if pertenece x caracteres then x : letras xs else letras xs

caracteres :: [Char]
caracteres = ['a' .. 'z'] ++ ['A' .. 'Z']

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece c [] = False
pertenece c (x : xs) = if c == x then True else pertenece c xs

-- k) 'masDe', que dada una lista de listas 'xss' y un
-- número 'n', devuelve la lista de aquellas listas de 'xss'
-- con longitud mayor que 'n'

masDe :: (Ord t, Num t) => [[a2]] -> t -> [[a2]]
masDe [] n = []
masDe (x : xs) n = if longitud x > n then x : masDe xs n else masDe xs n