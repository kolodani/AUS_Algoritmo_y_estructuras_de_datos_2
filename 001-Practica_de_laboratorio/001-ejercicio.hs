module Practica0 where

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
Rta: esta mal armado el condicional, vamos a hacer correctamente el if
-}
regla :: Bool -> String
regla b = if b then "Quedate en casa" else "Sali a fuera"

{-
-- b)
case [x]         =  []
case (x:y:xs)    =  y : case (x:xs)
case []          =  []
Rta: la palabra case no puede ser usada como un funcion porque es una palabra reservada del lenguaje
-}
case1 :: [a] -> [a]
case1 [x] = []
case1 (x : y : xs) = y : case1 (x : xs)
case1 [] = []

{-
-- c)
map f []        =  []
map f (x:xs)     =  f x : map f xs
Rta: estoy haciendo uso ambiguo de map al querer redefinir una funcion y no sabe que usar el interprete
-}
map1 :: (t -> a) -> [t] -> [a]
map1 f [] = []
map1 f (x : xs) = f x : map1 f xs

{-
-- d)
listNumeros = (1 : 2) : 'a' : []
Rta: las listas son de un unico tipo, no se puede mezclar tipos
-}
listNumeros :: [Char]
listNumeros = '1' : '2' : 'a' : []

{-
-- e)
[]     ++! ys = ys
(x:xs) ++! ys = x : xs ++! ys
Rta: declaro bien el tipo la operatoria que hago con el concatenador de listas
-}
(++!) :: [a] -> [a] -> [a]
[] ++! ys = ys
(x : xs) ++! ys = x : xs ++! ys

{-
-- f)
addToTail x xs = map +x tail xs
Rta: agrego parentesis porque map no entiende bien cual es la funcion y cual lista a aplicar
-}
addToTail :: Num b => b -> [b] -> [b]
addToTail x xs = map (+ x) (tail xs)

{-
-- g)
listmin xs = head . sort xs
Rta: pongo parentesis para que se haga la composicion de funciones
-}
listmin :: Ord c => [c] -> c
listmin xs = (head . sort) xs

{-
-- h) (*)
smap f [] = []
smap f [x] = [f x]
smap f (x:xs) = f x : smap (smap f) xs
Rta: la correccion es para borrar la concurrencia infinita
-}
smap f [] = []
smap f [x] = [f x]
smap f (x : xs) = f x : smap f xs