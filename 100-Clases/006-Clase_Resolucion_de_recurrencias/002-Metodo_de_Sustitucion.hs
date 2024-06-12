{-
    Metodo de Sustitucion
-}

-- En este metodo:
-- 1) Adivinamos la solucion
-- 2) Probamos que es correcta con induccion matematica.

-- Veamos el ejemplo de mergesort:

-- W(0) = k0
-- W(1) = k1
-- W(n) = 2W(n/2) + k2n
    -- * Adivinamos que W(n) = O(n log n)
    -- * Probamos que W(n) <= c n log n
    -- * Para Probarlo usamos induccion:
        -- * Supongo que la expresion es valida para cualquier valor menor a n y luego pruebo que es valida para n

-- * Supongo que vale para [n/2]
-- * luego mi HI (Hipotesis Inductiva) es:
    -- W(n/2) <= c (n/2) log (n/2)

    -- W(n) = 2W(n/2) + k2n
    --      <= 2c (n/2) log (n/2) + k2n
    --      <= c n log (n/2) + k2n
    --      = c n log n - c n log 2 + k2n
    --      = c n log n - c n + k2n
    --      <= c n log n           cuando c >= k2

-- Falta chequear si vale para los casos base:
-- * W(0) <= c 0 log 0
-- * W(1) <= c 1 log 1

-- Solo necesito que valga para todo n >= n0
-- Tomamos n0 = 2
-- W(2) = 2 W(1) + 2 c2 = 2 c1 + 2 c2 <+ c 2 log 2 = 2c
-- W(3) = 2 W(1) + 3 c2 = 3 c1 + 3 c2 <+ c 3 log 3

-- Elegimos c suficientemente grande
