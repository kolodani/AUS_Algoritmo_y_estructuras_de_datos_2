module Practica0 where

import Data.List

{-
1) Los siguientes códigos tienen errores, cargar el archivo 20.Practica.0.hs en el interprete de Haskell
GHCi, leer los mensajes de error y corregirlos hasta que el archivo se cargue correctamente.
-}

-- a)

regla b = case b of
    True -> "Quedate en Casa"
    False -> "Sali"

-- b)
caso [x]           =  []
caso (x:y:xs)      =  y : caso (x:xs)
caso []            =  []

-- c)
mapa f []         =  []
mapa f (x:xs)     =  f x : mapa f xs

-- d)
listNumeros = 1 : 2 : 3 : []

-- e)
[]     ++! ys = ys
(x:xs) ++! ys = x : xs ++! ys

-- f)
addToTail x xs = map (+x) (tail xs)

-- g)
listmin xs = (head . sort) xs

-- h) (*)
smap f [] = []
smap f [x] = [f x]
smap f (x:xs) = f x : smap f xs

