{-
    Funciones Recursivas
-}

-- como hemos visto hasta ahota las finciones pueden definirse en
-- terminos de otras funciones

factorial n = product [1..n]

-- las expresiones son evaluadas por pasos al aplicar las funciones a sus argumentos

-- factorial 4
-- product [1..4]
-- product [1,2,3,4]
-- 1 * 2 * 3 * 4
-- 24

-- en haskell las funciones puedne ser definidas en termino de ellas mismas (recursion)

factorial' 0 = 1
factorial' n = n * factorial' (n-1)

-- factorial mapea 0 en 1, y cualquier otro entero al producto de si mismo y el factorial de su predecesor

-- factorial' 3
-- 3 * factorial' 2
-- 3 * (2 * factorial' 1)
-- 3 * (2 * (1 * factorial' 0))
-- 3 * (2 * (1 * 1))
-- 3 * (2 * 1)
-- 3 * 2
-- 6

-- la definicion recursiva diverge en el caso <0 porque el caso base nunca se alcanza
-- factorial' (-1)
-- *** Exception: stack overflow

-- recursion sobre listas

product' :: Num a => [a] -> a
product' [] = 1
product' (n:ns) = n * product' ns

-- usando la recursion podemos definir el reverso de una lista

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- reverse mapea la lista vacia [] en la lista vacia [],
-- y las no vacias al reverso de su cola tail concatenada con su cabeza head

-- reverse' [1,2,3]
-- reverse' [2,3] ++ [1]
-- (reverse' [3] ++ [2]) ++ [1]
-- ((reverse' [] ++ [3]) ++ [2]) ++ [1]
-- ((([] ++ [3]) ++ [2]) ++ [1]
-- [3,2,1]

-- funciones que toman mas de un argumento tambien puede ser definidas en forma recursiva

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

-- zip' [1,2,3,4] ['a','b','c']
-- [(1,'a'), (2,'b'), (3,'c')]
