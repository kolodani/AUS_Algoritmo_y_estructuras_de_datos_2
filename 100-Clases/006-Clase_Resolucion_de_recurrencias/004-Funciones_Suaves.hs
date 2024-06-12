{-
    Funciones suaves
-}

-- * Cuando analizamos recurrencias pueden aparecer piso y techo
-- * Nos gustaria poder sacarlas facilmente
-- * Esto es posible cuando n = b^k, es decir luego n/b = piso(n/b) = techo(n/b)
-- * No siempre el comportamiento asintotico de la funcion para n = b^k sera el mismo para cualquier entrada,
-- * pero en algunas funciones denominadas suaves (smooth) ocurre este comportamiento
-- * Funciones suaves: n^r, n log(n), n^2 log(n), etc
-- * Funciones NO suaves: 2^n, n^log(n), n!, etc
-- * Una funcion f: N -> R es b-suave (smooth) si:
    -- 1) es eventualmente no decreciente y
    -- 2) f(bn) pertenece a O(f(n))
-- Luego si f es b-suave para un b>=2, entonces es suave
-- * Luego si f es suave: g(b^k) pertenece a theta(f(b^k)) entonces g(n) pertenece a theta(f(n)) para cualquier b >= 2

-- Veamos un ejemplo
-- * Si tenemos que calcular una recurrencia W de la forma:
    -- W(1) = c1
    -- W(n) = W(piso(n/2)) + W(techo(n/2)) + c2n
-- * Podemos sacar el piso y el techo y resolver W^s, para n = 2^k:
    -- W^s(1) = c1
    -- W^s(n) = 2W^s(n/2) + c2n
-- * como W^s pertenece a O(n log(n)), y n log(n) es suave entonces W pertenece a O(n log(n))
