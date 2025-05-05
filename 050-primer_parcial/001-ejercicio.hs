{-
1.- dar dos ejemplos
-}

-- a) (Bool -> Bool) -> (Int -> Int)

auxA :: Bool -> Bool
auxA x = if x then True else False

auxA2 :: Int -> Int
auxA2 x = if x `mod` 2 == 0 then x + 1 else x - 1

ejemploA :: (Bool -> Bool) -> (Int -> Int)
ejemploA x = auxA2

-- b) Bool -> (Int -> Bool)

par :: Int -> Bool
par x
    | even x = True
    | otherwise = False

consulta :: Bool -> (Int -> Bool)
consulta x = if x then par else even