module Practica0 where

import Data.List
{-
2. Definir las siguientes funciones y determinar su tipo:
-}

--a) five, que dado cualquier valor, devuelve 5
five :: a -> Int
five x = 5

--b) apply, que toma una función y un valor, y devuelve el resultado de
--aplicar la función al valor dado
apply :: (a -> a) -> a -> a
apply f x = f x

--c) identidad, la función identidad
identidad :: a -> a
identidad x = x

--d) first, que toma un par ordenado, y devuelve su primera componente







{-
e) derive, que aproxima la derivada de una función dada en un punto dado

f) sign, la función signo

g) vabs, la función valor absoluto (usando sign y sin usarla)

h) pot, que toma un entero y un número, y devuelve el resultado de
elevar el segundo a la potencia dada por el primero

i) xor, el operador de disyunción exclusiva

j) max3, que toma tres números enteros y devuelve el máximo entre llos

k) swap, que toma un par y devuelve el par con sus componentes invertidas
-}
