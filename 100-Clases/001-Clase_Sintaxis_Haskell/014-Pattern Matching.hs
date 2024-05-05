{-
    Pattern Matching
-}

-- Muchas funciones se definen mas claramente usando pattern matching (ajuste de patrones)

not :: Bool -> Bool
not False = True
not True = False

-- not mapea False a True y True a False

-- los patrones se componen de constructores de datos y variables

-- las funciones pueden ser definidas de distintas foormas usando pattern matchinf:

and' :: Bool -> Bool -> Bool
and' True True = True
and' True False = False
and' False True = False
and' False False = False

-- puede ser escrita en forma compacta como:

and'' :: Bool -> Bool -> Bool
and'' True True = True
and'' _ _ = False

-- el simbolo _ es un patron comodin que machea cualquier patron

-- las ecuaciones con patter matching se evaluan en orden(Top-Down)
-- por ejemplo la siguiente definicion siempre retorna False

-- and' :: Bool -> Bool -> Bool
-- and' _ _ = False
-- and' True True = True

-- las ecuaciones no pueden repetir variables
-- por ejemplo la siguiente definicion da error:
-- b && b = b
-- _ && _ = False
-- esto no se puede escribir