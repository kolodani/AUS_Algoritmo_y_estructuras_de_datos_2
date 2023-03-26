{-
1) Los siguientes códigos tienen errores, cargar el archivo 20.Practica.0.hs en el interprete de Haskell
GHCi, leer los mensajes de error y corregirlos hasta que el archivo se cargue correctamente.
-}

-- a)
{-
regla b = case b of
    True -> "Quedate en Casa"
    False -> "Qudate en Casa"
-}
regla :: Bool -> [Char]
regla b = if b then "Quedate en Casa" else "Qudate en casa"

-- b)
{-
case [x]         =  []
case (x:y:xs)      =  y : case (x:xs)
case []          =  []
-}

case1 :: [a] -> [a]
case1 [x]         =  []
case1 (x:y:xs)      =  y : case1 (x:xs)
case1 []          =  []

-- c)
{-
map f []        =  []
map f (x:xs)     =  f x : map f xs
-}

mape :: (t -> a) -> [t] -> [a]
mape f [] = []
mape f (x : xs) = f x : map f xs

-- d)
{-
listNumeros = (1 : 2) : 'a' : []
-}

listNumeros = '1' : '2' : 'a' : []

--------------------- POR RESOLVER -------------------------------------------------

{-
-- e)
[]     ++! ys = ys
(x:xs) ++! ys = x : xs ++! ys

-- f)
addToTail x xs = map +x tail xs

-- g)
listmin xs = head . sort xs

-- h) (*)
smap f [] = []
smap f [x] = [f x]
smap f (x:xs) = f x : smap (smap f) xs

-}