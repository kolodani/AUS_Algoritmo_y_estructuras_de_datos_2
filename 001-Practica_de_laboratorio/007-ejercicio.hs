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
ordinales :: [(Char, Int)]
ordinales = zip ['a' .. 'z'] [1 ..]

deslistar :: [Int] -> Int
deslistar [x] = x

codes :: [Char] -> [Int]
codes [] = []
codes (x : xs) = deslistar [y | (c, y) <- ordinales, c == x] : codes xs

-- e) 'restos', que calcula la lista de los restos de la
-- división de los elementos de una lista de números dada por otro
-- número dado

restador :: Int -> Int -> Int
restador x y = if x >= y then restador (x - y) y else x

restos :: Int -> [Int] -> [Int]
restos r [] = []
restos r (x : xs) = restador x r : restos r xs

-- f) 'cuadrados', que dada una lista de números, devuelva la
-- lista de sus cuadrados
cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x : xs) = (x * x) : cuadrados xs

-- g) 'longitudes', que dada una lista de listas, devuelve la
-- lista de sus longitudes
contador :: [a] -> Int
contador [] = 0
contador (x : xs) = 1 + contador xs

longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes (x : xs) = contador x : longitudes xs

-- h) 'orden', que dada una lista de pares de números, devuelve
-- la lista de aquellos pares en los que la primera componente es
-- menor que el triple de la segunda
orden :: [(Int, Int)] -> [(Int, Int)]
orden [] = []
orden ((x, y) : xs) = if x < (3 * y) then (x, y) : orden xs else orden xs

-- i) 'pares', que dada una lista de enteros, devuelve la lista
-- de los elementos pares
pares :: [Int] -> [Int]
pares [] = []
pares (x : xs) = if x `mod` 2 == 0 then x : pares xs else pares xs

-- j) 'letras', que dada una lista de caracteres, devuelve la
-- lista de aquellos que son letras (minúsculas o mayúsculas)
letras :: [Char] -> [Char]
letras [] = []
letras (x : xs) = if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then x : letras xs else letras xs

-- k) 'masDe', que dada una lista de listas 'xss' y un
-- número 'n', devuelve la lista de aquellas listas de 'xss'
-- con longitud mayor que 'n'
masDe :: Int -> [[Int]] -> [[Int]]
masDe n [] = []
masDe n (x : xs) = if n < contador x then x : masDe n xs else masDe n xs