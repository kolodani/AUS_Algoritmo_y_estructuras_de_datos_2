{-
    Analisis Asintotico
-}

-- * Nos interesa saber el orden de crecimiento de los recursos que consumen un algoritmo.
-- * Necesitamos analizarlos instancias grandes de su entrada para evidenciarlo.
-- * Analisis Asintotico de su eficiencia.
-- * Obtenemos una ecuacion en terminos de la entrada.

-- Analicemos una algoritmo A y otro B donde ambos resuelven el problema P en terminos de su entrada n.
-- WA(n) = 2 n log(n) + 3 n + 4 log(n) + 5
-- WB(n) = 6 n + 7 log²(n) + 8 log(n) + 9
-- ¿Que algoritmo preferimos?

-- La eficiencia de un algoritmo depende principalmente del termino dominante en la expresion de su complejidad.

-- * WA(n) = O(n log(n))
-- * WB(n) = O(n)

-- en este caso preferimos el algoritmo B. porque su complejidad es lineal.
