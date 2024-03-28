{-
    1.2.1
    Para evaluar x * y, se reducen las expresiones x e y a sus respectivas
    formas normales y despues se lleva a cabo la evaluacion. ¿Termina la
    evaluacion de cuadrado infinito?
-}

cuadrado   :: Integer -> Integer
cuadrado x  = x * x

infinito :: Integer
infinito = infinito + 1

-- evaluacion
-- cuadrado infinito
-- esta evaluacion no terminaria nunca porque se haria lo siguiente
-- cuadrado infinito
-- (infinito) * (infinito)
-- (infinito + 1) * (infinito + 1)
-- ((infinito + 1) + 1) * ((infinito + 1) + 1)
-- (((infinito + 1) + 1) + 1) * (((infinito + 1) + 1) + 1)
-- y asi sucesivamente
-- si se evaluara antes infinito que cuadrado
-- cuadrado infinito
-- cuadrado (infinito + 1)
-- cuadrado ((infinito + 1) + 1)
-- cuadrado (((infinito + 1) + 1) + 1)
-- y asi sucesivamente
