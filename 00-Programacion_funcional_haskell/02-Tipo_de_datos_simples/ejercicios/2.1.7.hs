{-
    2.1.7
    ¿Cuantas ecuaciones tendriamos que escribir para definir Triangulo como una
    concrecion de la clase de tipos Ord?
-}

-- 3 ecuaciones
data Triangulo = Fallo | Isoseles | Equilatero | Escaleno deriving (Show, Eq, Ord)
