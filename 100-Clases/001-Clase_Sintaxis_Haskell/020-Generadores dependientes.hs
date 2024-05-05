{-
    Generadores Dependientes
-}

-- Un generador puede depender de variables introducidas por un generador anterior
-- > [(x,y) | x <- [1..3], y <- [x..3]]

-- esto es la lista de todos los pares (x,y) tal que x,y estan en [1..3] y x <= y

-- Usandp generadores dependientes podemos definir concat definida en el preludio
-- concat :: [[a]] -> [a]
-- concat xss = [x | xs <- xss, x <- xs]

-- > concat [[1,2,3],[4,5],[6]]
-- [1,2,3,4,5,6]
