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
Comentario: el case en si no esta mal escrito pero si se evalua con if se puede hacer mas simple
el case sirve mas para evaluar mas de una condicion
-}
regla :: Bool -> String
regla b = if b then "Quedate en casa" else "Sali a fuera"

{-
-- b)
case [x]         =  []
case (x:y:xs)    =  y : case (x:xs)
case []          =  []
Rta: la palabra case no puede ser usada como un funcion porque es una palabra reservada del lenguaje
comentario: la palabra case no se puede usar comom nombre de funcion por ser reservada, lo que origina lo siguiente
el error es, estas usando mal case, y no, no estas usando un nombre correcto para tu funcion
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
Comentario: la funcion map no es una palabra reservada pero si es una funcion que esta definida en el modulo Data.List
al a ver sido importada al codigo, no se puede declarar una funcion con ese nombre porque se estaria haciendo uso
de una ambiguedad, ya que el interprete no sabra si se tiene que referir a un map o al otro
-}
map1 :: (t -> a) -> [t] -> [a]
map1 f [] = []
map1 f (x : xs) = f x : map1 f xs

{-
-- d)
listNumeros = (1 : 2) : 'a' : []
Rta: las listas son de un unico tipo, no se puede mezclar tipos
Comentario: las listas en haskell son una estructura de datos homogenea, es decir, que todos los elementos de una lista
deben ser del mismo tipo, en este caso se esta mezclando dos tipos de datos, un numero y un caracter
recordar que las listas pueden contener infinitos elementos
-}
listNumeros :: [Char]
listNumeros = '1' : '2' : 'a' : []

{-
-- e)
[]     ++! ys = ys
(x:xs) ++! ys = x : xs ++! ys
Rta: declaro bien el tipo la operatoria que hago con el concatenador de listas
Comentario: aqui se esta declarando un operador de concatenacion de listas, pero no se esta declarando el tipo de dato
al que pertenece, por lo que el interprete no sabe que tipo de dato es, por lo que se debe declara el mismo
-}
(++!) :: [a] -> [a] -> [a]
[] ++! ys = ys
(x : xs) ++! ys = x : xs ++! ys

{-
-- f)
addToTail x xs = map +x tail xs
Rta: agrego parentesis porque map no entiende bien cual es la funcion y cual lista a aplicar
Comentario: la falta de parentesis hace que las funciones tomen mal los parametros que se les pasa, por ejemplo, en
este caso map esta esperando una funcion y una lista, pero no sabe cual es cual, por lo que se debe agregar parentesis
para que se entienda bien que es lo que se esta pasando, asi map toma la funcion +x y la lista tail xs
-}
addToTail :: Num b => b -> [b] -> [b]
addToTail x xs = map (+ x) (tail xs)

{-
-- g)
listmin xs = head . sort xs
Rta: pongo parentesis para que se haga la composicion de funciones
Comentario: la composicion de funciones en haskell se hace con el operador (.) pero este necesita que se le pase
los parametros de las funciones que se van a componer, en este caso se esta pasando solo un parametro, por lo que
se debe aguardar los parametros de la funcion head. en resumen, promero a la lista se le va a aplicar la funcion sort
que la va a ordenar de menor a mayor y luego se le va a aplicar la funcion head a la lista ordenada que va a devolver
el primer elmemento de la lista
-}
listmin :: Ord c => [c] -> c
listmin xs = (head . sort) xs

{-
-- h) (*)
smap f [] = []
smap f [x] = [f x]
smap f (x:xs) = f x : smap (smap f) xs
Rta: la correccion es para borrar la concurrencia infinita
Comentario: la recurcion es una de las herramientas mas poderosas de haskell, pero tambien puede ser mal usada
en este caso se origina una concurrencia infinita, ya que se esta llamando a la funcion smap dentro de la misma,
lo que ocaciona que se genere un loop infinito. por eso uno debe lograr que la recursividad termine en algun punto
-}
smap f [] = []
smap f [x] = [f x]
smap f (x : xs) = f x : smap f xs