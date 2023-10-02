{-
    1.2.5
    ahora supongamos que definimos el tamaño de una expresion mediante las reglas siguientes:
    tam(cero) = 1
    tam(sucesor(e1)) = 1 + tam(e1)
    tam(predecesor(e1)) = 1 + tam(e1)
    tam(suma(e1,e2)) = 1 + 2 * (tam(e1) + tam(e2))
    Mostrar que la aplicacion de cualquiera de las cinco reglas de reduccion
    dadas mas arriba reduce el tamaño de la expresion. ¿Por que demuesra esto
    que es proceso de reduccion debe terminar siempre para cualquier expresion inicial dada?
-}

cero :: Integer
cero = 0

predecesor :: Integer -> Integer
predecesor x = x - 1

sucesor :: Integer -> Integer
sucesor x = x + 1

suma :: (Integer, Integer) -> Integer
suma (e1, e2) = e1 + e2

-- tam :: Integer -> Integer
-- tam cero = 1
-- tam (sucesor e1) = 1 + (tam e1)
-- tam (predecesor e1) = 1 + (tam e1)
-- tam (suma (e1, e2)) = 1 + 2 * ((tam e1) + (tam e2))

-- en este caso cualquier expresion inicial dada terminara porque el tamaño de la expresion
-- se reduce en cada paso de la reduccion