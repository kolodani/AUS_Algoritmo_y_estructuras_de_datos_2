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

-- c) 'todos', que devuelve True si todos los elementos de
-- una lista de valores booleanos son True, y False en caso contrario

-- d) 'codes', que dada una lista de caracteres, devuelve la
-- lista de sus ordinales

-- e) 'restos', que calcula la lista de los restos de la división de los
-- elementos de una lista de números dada por otro número dado

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
