{-
    Ejemplo de Merge Sort
-}

-- * Dividimos el problema hasta que sea trivial resolverlo. osea que la lista tenga un solo elemento.
-- * Resolvemos el problema recursivamente.
-- * Combinamos las soluciones en una solucion del problema inicial.

-- * Merge Sort en Haskell
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = let (ls,rs) = split xs
               (ls', rs') = (msort ls, msort rs)
              in merge (ls', rs')

split :: [a] -> ([a], [a])
split [] = ([], [])
split [x] = ([x], [])
split (x:y:xs) = let (ls, rs) = split xs
                 in (x:ls, y:rs)

merge :: Ord a => ([a], [a]) -> [a]
merge ([], rs) = rs
merge (ls, []) = ls
merge (x:ls, y:rs) = if x < y then x:merge (ls, y:rs) else y:merge (x:ls, rs)

--------------------------------------------------------------------------

-- Analisis de costo de nuestro algoritmo
-- W msort(0) = k0
-- W msort(1) = k1
-- W msort(n) = W split(n) + 2 W msort(n/2) + W merge(n) + k2 si n > 1

-- W split(0) = k3
-- W split(1) = k4
-- W split(n) = W split(n-2) + k5 si n > 1

-- W merge(0) = k6
-- W merge(n) = W merge(n-1) + k7 si n > 0

-- n es la suma de las longitudes de las listas (x:xs) y (y:ys)

-- W merge pertenece a O(n)

--------------------------------------------------------------------------

-- W msort(0) = k0
-- W msort(1) = k1
-- W msort(n) = W split(n) + 2 W msort(n/2) + W merge(n) + k2 si n > 1

-- W Msort(n) = W msort(n/2)+ k' n si n > 1

-- W msort pertenece a O(n log n)

--------------------------------------------------------------------------

-- S msort(0) = k0
-- S msort(1) = k1
-- S msort(n) = S split(n) + S msort(n/2) + k2 si n > 1

-- S split(0) = k3
-- S split(1) = k4
-- S split(n) = S split(n-2) + k5 si n > 1

-- S split pertenece a S(n)

-- S merge(0) = k6
-- S merge(n) = S merge(n-1) + k7 si n > 0

-- S merge pertenece a O(n)

--------------------------------------------------------------------------

-- S msort(0) = k0
-- S msort(1) = k1
-- S msort(n) = S split(n) + S msort(n/2) + S merge(n) + k2 si n > 1

-- S Msort(n) = S msort(n/2)+ k' n si n > 1

-- S msort pertenece a S(n)