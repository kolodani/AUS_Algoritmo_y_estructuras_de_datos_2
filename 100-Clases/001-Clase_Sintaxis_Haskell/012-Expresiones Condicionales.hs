{-
    Expresiones Condicionales
-}

-- Las funciones pueden ser definidas usando exprresiones condicionales
abs :: Int -> Int
abs n = if n >= 0 then n else -n

-- ambas ramas del if deben tener el mismo tipo

-- las expresiones condicionales pueden ser anidadas
signum :: Int -> Int
signum n = if n < 0 then -1 else
            if n == 0 then 0 else 1

-- las expresiones condicionales siempre deben tener la rama else
-- lo que elimina la posibilidad de ambiguedades cuando se anidan expresiones
