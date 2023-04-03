{-
7) Sin usar funciones definidas en el preludio,
defina recursivamente las siguientes funciones y
determine su tipo más general:
-}

-- a) 'suma', que suma todos los elementos de una lista de números
suma :: [Int] -> Int
suma [] = 0
suma (x : xs) = x + suma xs

-- b) 'alguno', que devuelve True si algún elemento de una
-- lista de valores booleanos es True, y False en caso contrario
alguno :: [Bool] -> Bool
alguno [] = False
alguno (x : xs) = x || alguno xs

-- c) 'todos', que devuelve True si todos los elementos de
-- una lista de valores booleanos son True, y False en caso contrario
todos :: [Bool] -> Bool
todos [] = True
todos (x : xs) = x && todos xs

-- d) 'codes', que dada una lista de caracteres, devuelve la
-- lista de sus ordinales
codes :: [Char] -> [Int]
codes [] = []
codes (x : xs) = (fromEnum x) : codes xs

-- e) 'restos', que calcula la lista de los restos de la división de los
-- elementos de una lista de números dada por otro número dado
restos :: [Int] -> Int -> [Int]
restos [] _ = []
restos (x : xs) n = (mod x n) : restos xs n

-- f) 'cuadrados', que dada una lista de números, devuelva la
-- lista de sus cuadrados
cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x : xs) = x ^ 2 : cuadrados xs

-- g) 'longitudes', que dada una lista de listas, devuelve la
-- lista de sus longitudes
longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes (x : xs) = length x : longitudes xs

-- h) 'orden', que dada una lista de pares de números, devuelve
-- la lista de aquellos pares en los que la primera componente es
-- menor que el triple de la segunda
orden :: [(Int, Int)] -> [(Int, Int)]
orden [] = []
orden ((x, y) : xs) = if x < 3 * y then (x, y) : orden xs else orden xs

-- i) 'pares', que dada una lista de enteros, devuelve la lista
-- de los elementos pares
pares :: [Int] -> [Int]
pares [] = []
pares (x : xs) = if mod x 2 == 0 then x : pares xs else pares xs

-- j) 'letras', que dada una lista de caracteres, devuelve la
-- lista de aquellos que son letras (minúsculas o mayúsculas)
letras :: [Char] -> [Char]
letras [] = []
letras (x : xs) = if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then x : letras xs else letras xs

-- k) 'masDe', que dada una lista de listas 'xss' y un
-- número 'n', devuelve la lista de aquellas listas de 'xss'
-- con longitud mayor que 'n'
masDe :: [[a]] -> Int -> [[a]]
masDe [] _ = []
masDe (x : xs) n = if length x > n then x : masDe xs n else masDe xs n