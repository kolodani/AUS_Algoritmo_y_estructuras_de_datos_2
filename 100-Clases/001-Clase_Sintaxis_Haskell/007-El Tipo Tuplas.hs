{-
    El Tipo Tuplas
-}

-- una tupla es una secuencia finita de elementos de diferentes tipos
-- puedo hacer tuplas de tipos distintos o no
-- (True, True) :: (Bool, Bool)
-- (True, 'a', 'b') :: (Bool, Char, Char)

-- en general, (t1, t2, ..., tn) es el tipo de tuplas de n elementos
-- donde i tiene tipo ti, para i = 1, 2, ..., n
-- en una tupla puedo tener n tipos distintos

-- a diferencia de las listas, las tuplas tienen explicitado en su tipo la cantidad de elementos que almacenan

-- los tipos de elementos de las tuplas es irrectricto
-- ('a',(True, 'c')) :: (Char, (Bool, Char))
