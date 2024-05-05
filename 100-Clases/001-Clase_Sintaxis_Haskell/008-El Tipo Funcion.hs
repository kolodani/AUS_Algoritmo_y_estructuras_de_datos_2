{-
    El Tipo Funcion
-}

-- una funcion mapea valores de un tipo en valores de otro: como en matematicas
-- f :: A -> B
-- en haskell seria
-- not :: Bool -> Bool        la funcion llamada 'not' mapea valores de tipo Bool en valores de tipo Bool
-- even :: Int -> Bool        la funcion llamada 'even' mapea valores de tipo Int en valores de tipo Bool

-- en general, un tipo t1 -> t2 mapea valores de t1 en valores de t2

-- las flechas se hacen con un signo de resta '-' y un signo mayor '>'

-- los tipo de los argumentos o de los resultados de una funcion son irrestrictos
add :: (Int, Int) -> Int
add (x, y) = x + y

zeroto :: Int -> [Int]
zeroto n = [0..n]
