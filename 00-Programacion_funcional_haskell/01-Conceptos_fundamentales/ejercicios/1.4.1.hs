{-
    1.4.1
    Supongamos que f y g tienen los tipos siguientes:
        f :: Integer -> Integer
        g :: Integer -> (Integer -> Integer)
    sea h definida como
        h     :: ..........
        h x y = f (g x y)
    Escribir el tipo correcto para h. determinar ahora cual de las siguientes definiciones, caso de serlo alguna, es correcta:
        h     = f . g
        h x   = f . (g x)
        h x y = (f . g) x y
-}

-- h :: Integer -> (Integer -> Integer)
-- h x y = f (g x y)