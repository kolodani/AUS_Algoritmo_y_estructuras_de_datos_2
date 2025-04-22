module Practica0 where

import Data.List

{-
2. Definir las siguientes funciones y determinar su tipo:
-}

-- a) five, que dado cualquier valor, devuelve 5
five :: (Num a) => p -> a
five x = 5

-- b) apply, que toma una función y un valor, y devuelve el resultado de
-- aplicar la función al valor dado
apply :: (t1 -> t2) -> t1 -> t2
apply f x = f x

-- c) identidad, la función identidad
identidad :: p -> p
identidad x = x

-- d) first, que toma un par ordenado, y devuelve su primera componente
first :: (Int, Int) -> Int
first (a, b) = a

-- e) derive, que aproxima la derivada de una función dada en un punto dado
derive :: (Fractional a, Fractional t) => (t -> a) -> t -> a
derive f x = (f (x + 0.00001) - f x) / 0.00001

-- f) sign, la función signo
signo1 :: (Ord a1, Num a1, Num a2) => a1 -> a2
signo1 x =
  if x < 0
    then -1
    else 1

signo2 :: (Ord a1, Num a1, Num a2) => a1 -> a2
signo2 x
  | x > 0 = 1
  | x < 0 = -1
  | otherwise = 0

-- g) vabs, la función valor absoluto (usando sign y sin usarla)
vabsSign :: (Ord a, Num a) => a -> a
vabsSign x
  | signo1 x == -1 = -x
  | otherwise = x

vabsSolo :: (Ord a, Num a) => a -> a
vabsSolo x
  | x < 0 = -x
  | otherwise = x

-- h) pot, que toma un entero y un número, y devuelve el resultado de
-- elevar el segundo a la potencia dada por el primero
pot :: (Eq t1, Num t1, Num t2) => t1 -> t2 -> t2
pot 0 y = 1
pot x y = y * pot (x - 1) y

-- i) xor, el operador de disyunción exclusiva
xor :: Bool -> Bool -> Bool
xor a b
  | a == b = False
  | otherwise = True

-- j) max3, que toma tres números enteros y devuelve el máximo entre llos
max3 :: Int -> Int -> Int -> Int
max3 a b c
  | a > b && a > c = a
  | b > a && b > c = b
  | otherwise = c

max3' :: (Ord a) => a -> a -> a -> a
max3' a b c = max2 (max2 a b) c

max2 :: (Ord a) => a -> a -> a
max2 x y = if x > y then x else y

-- k) swap, que toma un par y devuelve el par con sus componentes invertidas
swap :: (b, a) -> (a, b)
swap (a, b) = (b, a)
