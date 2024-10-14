{-
    Eq son todas las funciones que usan el la operacion igualdad
    osea que hacen uso de == o /=
-}
{-
    Ord que en algun tipo usan las operaciones
    >, <, >=, <=
    en Ord o Ordering se ven representado tres valores distintos
    mayor que, igual que, menos que con:
    GT, EQ y LT
-}
-- funcion compare
comparando = 5 >= 2
comparando' = 5 `compare` 2

-- show convierte el tipo a cadena de texto
mostrando = show 58962
mostrando' = show True

-- read convierte una cadena a un valor del tipo que es miembro
convirtiendo = read "888" + 112

-- ayudamos a read con la inferencia de tipos
readAyudado = read "5" :: Int
readAyudado' = read "5" :: Float
{-
    Enum son tipos ordenados, los tipos de esta clase pueden ser
    (), Bool, Char, Ordering, Int, Integer, Float y Double
-}

{-
    los limites estan en Bounded, tanto con minBound como con maxBound
-}

{-
    los Num son clases de tipos numericos
-}
{--}