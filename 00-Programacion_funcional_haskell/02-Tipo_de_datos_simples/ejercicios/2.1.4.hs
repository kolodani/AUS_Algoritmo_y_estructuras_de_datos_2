{-
    2.1.4
    Reescribir la declaracion de la clase de tipos Eq, dando una definicion por
    defecto para (/=).
-}

class Eq' a where
    (==), (/=) :: a -> a -> Bool
    x /= y = not (x == y)