{-
    2.1.9
    La definicion de (==) sobre un tipo de datos deberia asegurar que esta
    operacion es:
    (a) reflexiva, esto es, x == x para todo x;
    (b) transitiva, esto es, x == y e y == z implica x == z; y
    (c) simetrica, esto es, x == y implica y == x.
    Muestrese que estas propiedades cumplen en la definicion del operador (==)
    sobre Bool.
-}

-- == :: Bool -> Bool -> Bool
-- True == True = True
-- False == False = True
-- True == False = False
-- False == True = False

-- con lo que acabo de definir se cumple que:
-- (a) x == x para todo x
-- (b) x == y e y == z implica x == z
-- (c) x == y implica y == x
