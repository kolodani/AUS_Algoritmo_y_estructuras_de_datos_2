{-
2.- tipar las siguientes funciones
-}

-- a)
clima1 :: Num a => a -> a -> (a -> Bool) -> a
clima1 x y z = if z y then y + x else x

-- b)
clima2 :: [[a]] -> ([[a]] -> Bool) -> [a] -> [a]
clima2 x y f = if y x then head x else tail f
