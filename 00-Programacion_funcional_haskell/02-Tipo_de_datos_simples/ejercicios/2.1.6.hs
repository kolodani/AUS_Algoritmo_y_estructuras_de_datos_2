{-
    2.1.6
    Definir una funcion Ordena3 que ordene tres enteros en orden creciente.
    A partir de ella, definir una funcion, llamemosla triangulo' , que no
    dependa de la suposicion de que sus argumentos estan en orden no decreciente.
-}

ordena3 :: (Int, Int, Int) -> (Int, Int, Int)
ordena3 (x, y, z) = (min x (min y z), max (min x y) (min y z), max x (max y z))

data Triangulo = Fallo | Isoseles | Equilatero | Escaleno deriving (Show)
-- triangulo' recibe los lados de un triangulo y usa ordena3 para ordenarlos
-- despues dice si es un triangulo o no y que tipo de triangulo es
triangulo' :: f -> (Int, Int, Int) -> Triangulo
triangulo' ordena3 (x, y, z) = if x + y > z then
                                    if x == y && y == z then Equilatero
                                    else if x == y || y == z || x == z then Isoseles
                                    else Escaleno
                                else Fallo
