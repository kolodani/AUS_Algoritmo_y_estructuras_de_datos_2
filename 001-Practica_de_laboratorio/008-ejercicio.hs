{-
8) Redefinir las funciones del ejercicio anterior usando foldr, map y filter.
ver su definición en https://hoogle.haskell.org/

funcion foldr: es una función de orden superior que permite reducir una lista a un solo valor.
funcion map: es una función de orden superior que permite aplicar una función a cada elemento de una lista.
funcion filter: es una función de orden superior que permite filtrar los elementos de una lista que cumplen una condición.

como se usamos estas funciones:
foldr :: (a -> b -> b) -> b -> [a] -> b
map :: (a -> b) -> [a] -> [b]
filter :: (a -> Bool) -> [a] -> [a]

ejemplo de uso:
foldr (+) 0 [1,2,3,4,5] -- 15
map (+1) [1,2,3,4,5] -- [2,3,4,5,6]
filter (>3) [1,2,3,4,5] -- [4,5]

explicacion:
foldr recibe una función que recibe dos argumentos,
segundo un valor que por lo general es el valor neutro de la función (como 0 para la suma),
tercero recibe una lista de elementos a los que se les aplicará la función.
esto da como resultado un solo valor.

map recibe una función que recibe un argumento,
segundo una lista de elementos a los que se les aplicará la función.
esto da como resultado una lista de elementos.

filter recibe una función que recibe un argumento,
segundo una lista de elementos a los que se les aplicará la función.
esto da como resultado una lista de elementos que cumplen la condición de la función.
-}

-- a) 'suma', que suma todos los elementos de una lista de números
suma :: [Int] -> Int
suma [] = 0
suma (x : xs) = x + suma xs

suma' :: [Int] -> Int
suma' xs = foldr (+) 0 xs

-- b) 'alguno', que devuelve True si algún elemento de una
-- lista de valores booleanos es True, y False en caso
-- contrario
alguno :: [Bool] -> Bool
alguno [] = False
alguno (x : xs) = x || alguno xs

alguno' :: [Bool] -> Bool
alguno' xs = foldr (||) False xs

-- c) 'todos', que devuelve True si todos los elementos de
-- una lista de valores booleanos son True, y False en caso
-- contrario
todos :: [Bool] -> Bool
todos [] = True
todos (x : xs) = x && todos xs

todos' :: [Bool] -> Bool
todos' xs = foldr (&&) True xs

-- d) 'codes', que dada una lista de caracteres, devuelve la
-- lista de sus ordinales
ordinales :: [(Char, Int)]
ordinales = zip ['a' .. 'z'] [1 ..]

deslistar :: [Int] -> Int
deslistar [x] = x

codes :: [Char] -> [Int]
codes [] = []
codes (x : xs) = deslistar [y | (c, y) <- ordinales, c == x] : codes xs

codes' :: [Char] -> [Int]
codes' xs = map (+ (-96)) (map fromEnum xs)

-- e) 'restos', que calcula la lista de los restos de la
-- división de los elementos de una lista de números dada por otro
-- número dado

restador :: Int -> Int -> Int
restador x y = if x >= y then restador (x - y) y else x

restos :: Int -> [Int] -> [Int]
restos r [] = []
restos r (x : xs) = restador x r : restos r xs

restos' :: Int -> [Int] -> [Int]
restos' n xs = map (`mod` n) xs

-- f) 'cuadrados', que dada una lista de números, devuelva la
-- lista de sus cuadrados
cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x : xs) = (x * x) : cuadrados xs

cuadrados' :: [Int] -> [Int]
cuadrados' xs = map (^ 2) xs

-- g) 'longitudes', que dada una lista de listas, devuelve la
-- lista de sus longitudes
contador :: [a] -> Int
contador [] = 0
contador (x : xs) = 1 + contador xs

longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes (x : xs) = contador x : longitudes xs

longitudes' :: [[a]] -> [Int]
longitudes' xs = map length xs

-- h) 'orden', que dada una lista de pares de números, devuelve
-- la lista de aquellos pares en los que la primera componente es
-- menor que el triple de la segunda
orden :: [(Int, Int)] -> [(Int, Int)]
orden [] = []
orden ((x, y) : xs) = if x < (3 * y) then (x, y) : orden xs else orden xs

orden' :: [(Int, Int)] -> [(Int, Int)]
orden' xs = filter (\(x, y) -> x < 3 * y) xs

-- i) 'pares', que dada una lista de enteros, devuelve la lista
-- de los elementos pares
pares :: [Int] -> [Int]
pares [] = []
pares (x : xs) = if x `mod` 2 == 0 then x : pares xs else pares xs

pares' :: [Int] -> [Int]
pares' xs = filter even xs

-- j) 'letras', que dada una lista de caracteres, devuelve la
-- lista de aquellos que son letras (minúsculas o mayúsculas)
letras :: [Char] -> [Char]
letras [] = []
letras (x : xs) = if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then x : letras xs else letras xs

letras' :: [Char] -> [Char]
letras' xs = filter (\x -> (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z')) xs

-- k) 'masDe', que dada una lista de listas 'xss' y un
-- número 'n', devuelve la lista de aquellas listas de 'xss'
-- con longitud mayor que 'n'
masDe :: Int -> [[Int]] -> [[Int]]
masDe n [] = []
masDe n (x : xs) = if n < contador x then x : masDe n xs else masDe n xs

masDe' :: Int -> [[Int]] -> [[Int]]
masDe' n (x : xs) = filter (\x -> length x > n) xs