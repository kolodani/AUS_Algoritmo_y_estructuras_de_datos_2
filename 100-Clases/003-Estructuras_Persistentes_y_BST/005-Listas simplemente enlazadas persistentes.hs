{-
    Listas simplemente enlazadas persistentes
-}

-- dadas dos listas xs e ys
-- xs = [1,2,3,4,5]
-- ys = [6,7,8,9,10]
-- queremos concatenarlas en una sola lista zs
-- al concatenarlas zs = xs ++ ys obtenemos:
-- zs = [1,2,3,4,5,6,7,8,9,10]
-- La operacion mantiene las listas xs e ys y cre una nueva zs
-- Se utilizo tiempo para copiar todos los elementos de xs
-- La operacion zs = xs ++ ys tomo un tiempo proporcional a la longitud de xs
