{-
    Teorema Maestro
-}

-- Muchas recurrencias que derivan de algoritmos tienen la forma:
    -- T(n) = aT(n/b) + f(n)

-- * En muchos casos podemos resolver este tipo de recurrencias utilizando el teorema maestro
-- * Existen varias versiones en la literatura de este teorema

-- Sean a, b pertenecen a R, a >= 1, b > 1 y
-- T(n) = aT(n/b) + f(n)

-- T(n)= theta(f(n)) si:
    -- existe e > 0 f(n) pertenece a theta(n^log_b(a+e)) y
    -- existe c perteneciente a R, n0 perteneciente a N . c < 1 y
    -- para todo n >= n0 . a f(n/b) <= c f(n)
-- T(n)= theta(n^log_b(a)*log(n)) si:
    -- f(n) pertenece a theta(n^log_b(a))
-- T(n)= theta(n^log_b(a)) si:
    -- Existe e > 0 . f(n) pertenece a theta(n^log_b(a-e))

-- Para nuestro ejemplo
-- T(n) = 3T(n/4) + cn^2

-- con a = 3, b = 4, f(n) = n^2, es el primer caso ya que si tomamos e = 1, log_4(4) = 1 por lo tanto T(n) pertenece a (n^2)

-- Otra version del teorema maestro:
-- Sean a, b, c pertenecen a R, a >= 1, b > 1 y
-- T(n) = aT(n/b) + n^c

-- T(n)= O(n^c) si:
    -- a < b^c
-- T(n)= theta(n^c * log(n)) si:
    -- a = b^c
-- T(n)= theta(n^log_b(a)) si:
    -- a > b^c

-- En el primer caso solamente se puede probar una cota superior, no theta. Para probar una cota ajustada haria falta agregar una condicion que es equivalente a la condicion del teorema enunciado anteriormente.

-- En ninguno de las dos versiones del teorema se cubren todos los casos posibles.