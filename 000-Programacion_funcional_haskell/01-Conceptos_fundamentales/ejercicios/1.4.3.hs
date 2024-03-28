{-
    1.4.3
    En matematicas, se usan frecuentemente logaritmos en varias bases. por
    ejemplo, logaritmo en base 2, logaritmo en base e y logaritmo en base 10.
    Dar un tipo apropiado para una funcion log que toma como argumento una base
    y devuelve la funcion logaritmo en esa base.
-}

logaritmo :: Float -> Float -> Float
logaritmo base x = logBase base x
