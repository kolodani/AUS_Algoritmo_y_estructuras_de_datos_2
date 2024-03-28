{-
    1.6.3
    ¿Pueden encontrarse tipos polimorficos para las siguientes funciones?
        rara f g = g (f g)
        masRara f = f f
-}

-- rara f g = g (f g)
-- para la funcion rara, f debe ser de tipo (a -> b) y g debe ser de tipo (a -> b) -> c
-- rara :: (a -> b) -> ((a -> b) -> c) -> c

-- masRara f = f f
-- para la funcion masRara, f debe ser de tipo (a -> b) -> c
-- masRara :: ((a -> b) -> c) -> c
