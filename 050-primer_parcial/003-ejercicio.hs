{-
3.- Splitcond even [1..10] = ([2,4,6,8,10],[1,3,5,7,9])
-}

-- definir recursivamente sin funciones predefinidas ni foldr

splitcond :: (Int -> Bool) -> [Int] -> ([Int],[Int])
splitcond f xs = (verdadero f xs, falso f xs)

verdadero :: (Int -> Bool) -> [Int] -> [Int]
verdadero f [] = []
verdadero f (x:xs) = if f x then x: verdadero f xs else verdadero f xs

falso :: (Int -> Bool) -> [Int] -> [Int]
falso f [] = []
falso f (x : xs) = if f x then falso f xs else x:falso f xs

-- usar foldr y una funcion anomima
-- foldr (+) 0 [1,2,3,4,5] -- 15
-- prueba :: (Int -> Bool) -> [Int] -> ([Int], [Int])



-- listas por comprencion sin usar funciones definidas
splitcond3 :: (Int -> Bool) -> [Int] -> ([Int], [Int])
splitcond3 f xs = ([x | x <- xs, f x == True], [x | x <- xs, f x == False])