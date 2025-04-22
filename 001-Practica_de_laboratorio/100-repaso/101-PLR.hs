import Data.List

{-
1) Los siguientes códigos tienen errores, cargar el archivo 20.Practica.0.hs en el interprete de Haskell
GHCi, leer los mensajes de error y corregirlos hasta que el archivo se cargue correctamente.
-}

{-
-- a)
regla b = case b of
    True -> "Quedate en Casa"
    False -> "Qudate en Casa"
-}
regla :: Bool -> String
regla b = if b then "Sali" else "Quedate en Casa"

{-
-- b)
case [x]         =  []
case (x:y:xs)      =  y : case (x:xs)
case []          =  []
-}
case1 :: [a] -> [a]
case1 [x]         =  []
case1 (x:y:xs)      =  y : case1 (x:xs)
case1 []          =  []

{-
-- c)
map f []        =  []
map f (x:xs)     =  f x : map f xs
-}
mapa :: (t -> a) -> [t] -> [a]
mapa f [] = []
mapa f (x : xs) = f x : mapa f xs

{-
-- d)
listNumeros = (1 : 2) : 'a' : []
-}
listNumeros1 :: [Char]
listNumeros1 = '1' : '2' : 'a' : []
listNumeros2 :: [(Integer, Integer)]
listNumeros2 = (1 , 2) : []

{-
-- e)
[]     ++! ys = ys
(x:xs) ++! ys = x : xs ++! ys
-}
(++!) :: [a] -> [a] -> [a]
[] ++! ys = ys
(x : xs) ++! ys = x : xs ++! ys

{-
-- f)
addToTail x xs = map +x tail xs
-}
addToTail :: Num b => b -> [b] -> [b]
addToTail x xs = map (+x) (tail xs)

{-
-- g)
listmin xs = head . sort xs
-}
listmin :: Ord c => [c] -> c
listmin xs = (head . sort) xs

{-
-- h) (*)
smap f [] = []
smap f [x] = [f x]
smap f (x:xs) = f x : smap (smap f) xs
-}
smap f [] = []
smap f [x] = [f x]
smap f (x : xs) = f x : (smap f) xs
