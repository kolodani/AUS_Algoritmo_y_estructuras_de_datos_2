{-
    The layout rule
-}

-- en haskell no se usan ; al final de las lineas
-- en su lugar, se usa el layout rule
-- el layout rule es una forma de definir bloques de codigo
-- en haskell, los bloques de codigo se definen por la indentacion
-- por ejemplo:

a = b + c
  where
    b = 1
    c = 2

d = a * 2

-- tambien se puede usar llaves y separar con ;


e = b + c
  where
    {b = 1;
    c = 2}

f = a * 2
