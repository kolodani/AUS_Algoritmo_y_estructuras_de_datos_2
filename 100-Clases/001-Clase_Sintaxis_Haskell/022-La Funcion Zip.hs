{-
    La funcion zip
-}

-- la funcion zip, mapea dos listas en una lista con los pares de elementos correspondientes

-- zip:: [a] -> [b] -> [(a,b)]
-- > zip ['a','b','c'] [1,2,3,4]
-- [('a',1),('b',2),('c',3)]

-- usando zip podemos definir una funcion que retorna la lista de pares de elementos adyacentes:

pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

-- > pairs [1,2,3,4]
-- [(1,2),(2,3),(3,4)]

-- Podemos usar pairs para decidir si una lista esta ordenada

sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x,y) <- pairs xs]

-- podemos usar zip para generar una funcion que retorne la lista de posiciones de un balor determinado

positions x xs = [i | (x',i) <- zip xs [0..], x == x']

-- > positions 0 [1,0,0,1,0,1,1,0]
-- [1,2,4,7]