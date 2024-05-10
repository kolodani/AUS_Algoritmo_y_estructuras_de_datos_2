{-
    En Haskell
-}

-- La concatenacion la definimos como:

-- (++) :: [a] -> [a] -> [a]
-- [] ++ ys = ys
-- (x:xs) ++ ys = x : (xs ++ ys)

-- Si observamos el resultado de la concatenacion zs = xs ++ ys de las
-- listas persitentes:

-- xs = [1,2,3,4,5]
-- ys = [6,7,8,9,10]
-- zs = [1,2,3,4,5,6,7,8,9,10]

-- Veamos que la copia de los datos xs en zs coincide con la recursion y
-- la aplicacion del (:) cons

