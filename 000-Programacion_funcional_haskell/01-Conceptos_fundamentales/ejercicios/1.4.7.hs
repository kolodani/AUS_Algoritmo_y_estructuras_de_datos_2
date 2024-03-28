{-
    1.4.7
    Definir una funcion uncurry que convierta una funcion currificada en su
    version no currificada. Mostrar que
        curry( uncurry f ) x y = f x y
        uncurry( curry f ) (x,y) = f (x,y)
    para todo x e y.
-}

-- Funcion currificada
f :: Int -> Int -> Int
f x y = x + y

-- Funcion no currificada
f' :: (Int, Int) -> Int
f' (x, y) = x + y