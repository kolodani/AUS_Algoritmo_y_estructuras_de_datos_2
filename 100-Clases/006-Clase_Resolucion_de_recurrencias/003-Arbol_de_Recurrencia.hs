{-
    Arbol de Recurrencia
-}

-- Vamos a ver este metodo sobre un ejemplo:
-- T(1) = c1
-- T(n) = 3T(n/4) + cn^2
-- Representa la recursion con un arbol

--                     cn^2
--                   /  |  \
--                  /   |   \
--                 /    |    \
--                /     |     \
--               /      |      \
--              /       |       \
--          T(n/4)   T(n/4)   T(n/4)

-- Donde la raiz tiene costo n^2 porque la primera llamada a la funcion tiene n^2 unidades de trabajo
-- Luego las ramas se corresponden con cada una de las llamadas recursivas

--                                   cn^2
--                                 /  |  \
--        -------------------------   |   -------------------------
--        |                           |                           |
--      T(n/4)                     T(n/4)                      T(n/4)
--     /  |  \                    /  |  \                     /  |  \
--    /   |   \                  /   |   \                   /   |   \
--   /    |    \                /    |    \                 /    |    \
--  /     |     \              /     |     \               /     |     \
--T(n/16)T(n/16)T(n/16)    T(n/16)T(n/16)T(n/16)       T(n/16)T(n/16)T(n/16)

-- Los nodos en el segundo nivel tiene costos c(n/4)^2 porque la funcion funcion ahora es llamada para un problema de tamaño n/4
-- Se sigue expandiendo el arbol hasta llegar a un caso base

-- si continuamos expandiendo el arbol llegamos a un punto en el que el problema es de tamaño 1
-- El ultimo nivel del arbol es un caso especial (caso base)
-- Sumando las operaciones por nivel y luego sumamos el costo de cada nivel obtenemos el costo total.

-- Luego el costo del arbol lo podemos calcular como:

-- T(n) = cn^2 + 3/16cn^2 + (3/16)^2cn^2 + ... + (3/16)^log4(n - 1)cn^2 + c1n^log4(3)
-- T(n) = sumatoria desde i=0 hasta log4(n - 1) de (3/16)^i * cn^2 + c1n^log4(3)
-- T(n) = (3/16)^log4(n - 1) * cn^2 / (1 - 3/16) + c1n^log4(3)
-- pertenece a O(n^2)

-- Este metodo nos proporciona un resultado exacto si no hacemos acotaciones en el procedimiento ni descartamos valores
-- Generalmente se usa para obtener un candidato (adivinar) y luego usar el metodo de sustitucion
