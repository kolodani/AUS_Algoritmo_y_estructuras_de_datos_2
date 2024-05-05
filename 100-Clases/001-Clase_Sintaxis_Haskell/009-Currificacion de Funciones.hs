{-
    Currificacion de Funciones
-}

-- es posible definir funciones con multiples argumentos retornando una funcion como resultado
add' :: Int -> (Int -> Int)
add' x y = x + y

-- add y add' retornan lo mismo pero add' toma los argumentos de a uno.
-- add' esta currificada, es decir, toma un argumento a la vez

-- la currificacion permite la aplicacion parcial de funciones
-- add' 3 :: Int -> Int
-- take 5 :: [Int] -> [Int]
-- drop 5 :: [Int] -> [Int]
