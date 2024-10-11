-- declaracion de tipos a una funcion anterior
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- funcion que toma tres parametros
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- diferencias de Int e Integer
enterosLimitados :: Int -> Int
enterosLimitados n = product [1..n]

enterosIlimitados :: Integer -> Integer
enterosIlimitados n = product [1 .. n]

-- Float representa flotantes
circunferencia :: Float -> Float
circunferencia r = 2 * pi * r

-- Double representa flotantes con mas precision
circunferencia' :: Double -> Double
circunferencia' r = 2 * pi * r
