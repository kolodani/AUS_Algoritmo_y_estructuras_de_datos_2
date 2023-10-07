{-
    2.1.5
    Reescribir la definicion de triangulo de modo que los casos del analisis por
    casos no dependan del orden en que se han escrito.
-}

data Triangulo = Fallo | Isoseles | Equilatero | Escaleno deriving Show

triangulo :: (Int, Int, Int) -> Triangulo
triangulo (x, y, z)
    | (x + y) <= z || (x + z) <= y || (y + z) <= x = Fallo
    | (x == y) && (y == z)                         = Equilatero
    | (x == y) || (y == z) || (x == z)             = Isoseles
    | otherwise                                    = Escaleno