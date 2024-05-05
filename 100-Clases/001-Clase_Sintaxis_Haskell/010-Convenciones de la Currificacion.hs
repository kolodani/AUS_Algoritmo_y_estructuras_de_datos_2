{-
    Convenciones de la Currificacion
-}

-- funciones que toman mas de dos argumentos se pueden definir devolviendo funciones anidadas:
mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z

-- como el constructor de tipos -> asocia a la derecha podemos no poner los parentesis

mult' :: Int -> Int -> Int -> Int
mult' x y z = x * y * z

-- en consecuencia la aplicacion de la funciones asociando a la izquierda
-- (((mult x) y) z)

-- NOTA:
-- Salvo en el caso de las tuplas, todas las funciones en haskell estan currificadas