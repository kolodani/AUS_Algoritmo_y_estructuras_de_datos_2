{-
8) Redefinir las funciones del ejercicio anterior usando foldr, map y filter.
ver su definición en https://hoogle.haskell.org/
-}
-- * a) 'suma', que suma todos los elementos de una lista de números
-- ? usando foldr
suma :: (Foldable t, Num b) => t b -> b
suma xs = foldr (+) 0 xs

-- * b) 'alguno', que devuelve True si algún elemento de una
-- * lista de valores booleanos es True, y False en caso contrario
-- ? usando foldr
algunos :: Foldable t => t Bool -> Bool
algunos xs = foldr (||) False xs

-- * c) 'todos', que devuelve True si todos los elementos de
-- * una lista de valores booleanos son True, y False en caso contrario
-- ? usando foldr
todos :: Foldable t => t Bool -> Bool
todos xs = foldr (&&) True xs

-- * d) 'codes', que dada una lista de caracteres, devuelve la
-- * lista de sus ordinales
-- ? usando map
code :: (Num p, Enum p) => Char -> p
code c = buscar c (zip (['a'..'n']++['ñ']++['o'..'z']) [1..])
buscar :: Eq t => t -> [(t, p)] -> p
buscar c [] = error "el caracter no tiene ordinal"
buscar c ((x,i):xs) = if c == x then i else buscar c xs

codes :: (Num b, Enum b) => [Char] -> [b]
codes xs = map code xs

-- * e) 'restos', que calcula la lista de los restos de la división de los
-- * elementos de una lista de números dada por otro número dado
-- ? usando map
divInt' :: (Num a, Ord a) => a -> a -> a -> a
divInt' _ 0 _ = error "Division por cero"
divInt' x n d
    | d * n < x = divInt' x n (d + 1)
    | d * n == x = d
    | otherwise = d - 1

divInt :: (Num a, Ord a) => a -> a -> a
divInt x n = divInt' x n 1

resto :: (Num a, Ord a) => a -> a -> a
resto n x = x - (divInt x n) * n

restoMap :: (Num b, Ord b) => b -> [b] -> [b]
restoMap n xs = map (resto n) xs

-- f) 'cuadrados', que dada una lista de números, devuelva la
-- lista de sus cuadrados

-- g) 'longitudes', que dada una lista de listas, devuelve la
-- lista de sus longitudes

-- h) 'orden', que dada una lista de pares de números, devuelve
-- la lista de aquellos pares en los que la primera componente es
-- menor que el triple de la segunda

-- i) 'pares', que dada una lista de enteros, devuelve la lista
-- de los elementos pares

-- j) 'letras', que dada una lista de caracteres, devuelve la
-- lista de aquellos que son letras (minúsculas o mayúsculas)

-- k) 'masDe', que dada una lista de listas 'xss' y un
-- número 'n', devuelve la lista de aquellas listas de 'xss'
-- con longitud mayor que 'n'
