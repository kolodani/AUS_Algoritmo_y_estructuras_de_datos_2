{-
1. Definir las siguientes funciones en forma recursiva:
-}

-- a) borrarUltimo que dada una lista borra el último elemento de la lista.
--    No utilizar reverse, ni tail .
borrarUltimo :: [a] -> [a]
borrarUltimo [] = []
borrarUltimo [x] = []
borrarUltimo (x:xs) = x: borrarUltimo xs

-- b) collect :: [(k , v )] → toma un lista de pares (clave, valor)
--    y asocia cada clave única con todos los valores con los que estaba
--    apareada originalmente. Por ejemplo: collect
collect :: Eq t => t -> [(t, a)] -> [a]
collect a [] = []
collect a ((k, v) : xs) = if a == k then v : collect a xs else collect a xs

-- c) serie que se comporta de la siguiente manera:
--    serie [1, 2, 3] = [[ ], [1], [1, 2], [1, 2, 3]]
--    Dar su tipo más general.
seriar :: [a] -> [[a]]
seriar [] = [[]]
seriar xs = xs : seriar (borrarUltimo xs)

invertir :: [[a]] -> [[a]]
invertir [] = []
invertir (x:xs) = invertir xs ++ [x]

serie :: [a] -> [[a]]
serie [] = []
serie xs = invertir (seriar xs)

-- d) paresIguales :: Int → Int → Int → Int → Bool toma 4 números enteros y retorna
--    True si de dos en dos son iguales (en cualquier orden), en los demás casos
--    retorna False.
--    Por ejemplo:
--    paresIguales 3 1 1 2 = False
--    paresIguales 3 1 3 1 = True
--    paresIguales 3 3 1 1 = True
--    paresIguales 3 1 1 3 = True
paresIguales :: Eq a => a -> a -> a -> a -> Bool
paresIguales a b c d
    | a == b && c == d = True
    | a == c && b == d = True
    | a == d && c == b = True
    | otherwise = False

-- e) isosceles :: Int → Int → Int → Bool que dadas la longitud de los lados
--    de un triángulo nos dice si es un triángulo isósceles.
isosceles a b c
    | a == b && a == c = False
    | a /= b && a /=c && b/= c = False
    | otherwise = True

-- f ) ror que dada una lista xs y un entero n, tal que n ⩽ lenght xs,
--     rota los primeros n elementos de xs a la derecha:
--     ror 3 [1, 2, 3, 4, 5] = [4, 5, 1, 2, 3].
--     Definir una versión recursiva de ror, sin usar drop, take ni tail .
ror :: (Eq t, Num t) => t -> [a] -> [a]
ror 0 (x : xs) = (x:xs)
ror n (x:xs) = ror (n-1) (xs ++ [x])

-- g) upto :: Int → Int → [Int] que dado dos números enteros n y m devuelve
--    la lista [n, n + 1, n +2, ..., m ]
--    en caso que n ⩽ m y la lista [ ] en otro caso.
--    No usar listas por comprensión.
upto n m
    | n > m = []
    | n <= m = n : upto (n+1) m

-- h) eco que devuelve la cadena obtenida a partir de la cadena xs repitiendo
--    cada elemento tantas veces como indica su posición.
--    No usar listas por comprensión.
--    Por ejemplo: eco "hola" = "hoolllaaaa"

eco :: [Char] -> [Char]
eco xs = deslistar (map (\(i, c)-> repetir (i ,c))  (posiciones xs))

repetir :: (Int, Char) -> [Char]
repetir (0, x) = []
repetir (n, x) = x : repetir ((n - 1),x)

posiciones :: [Char] -> [(Int, Char)]
posiciones xs = zip [1..] xs

deslistar :: [[a]] -> [a]
deslistar [] = []
deslistar (x:xs) = x ++ deslistar xs

