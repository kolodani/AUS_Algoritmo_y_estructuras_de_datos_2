{-
    1.2.4
    Continuando con el ejercicio anterior, supongamos que se añade una regla
    sintactica adicional al lenguaje:
    3- si e1 y e2 son expresiones, enconces tambien lo es suma(e1,e2),
    las reglas de reduccion correspondientes son:
    suma(cero, e2) = e2
    suma(sucesor(e1),e2) = sucesor(suma(e1, e2))
    suma(predecesor(e1),e2) = predecesor(suma(e1, e2))
    Simplificar la expresion suma(sucesor(predecesor (cero))),cero).
    contar de cuantos modos direrentes se pueden aplicar las reglas de reduccion
    a la expresion anterior. ¿Conducen todos ellos al mismo resultado?
-}

cero :: Integer
cero = 0

predecesor :: Integer -> Integer
predecesor x = x - 1

sucesor :: Integer -> Integer
sucesor x = x + 1

suma :: (Integer, Integer) -> Integer
suma (e1, e2) = e1 + e2

-- la expresion suma(sucesor(predecesor (cero))),cero)
-- se puede simplificar de la siguiente manera:
-- suma(sucesor(predecesor (cero))),cero)
-- suma(sucesor(predecesor (0))),cero)
-- suma(sucesor(-1)),cero)
-- suma(0),cero)
-- suma(0,0)
-- 0 + 0
-- 0
