data Triangulo = Fallo | Isoseles | Equilatero | Escaleno deriving Show

triangulo :: (Int, Int, Int) -> Triangulo
triangulo (x, y, z)
    | x + y <= z             = Fallo
    | x == z                 = Equilatero
    | (x == z) || (y == z)   = Isoseles
    | otherwise              = Escaleno
