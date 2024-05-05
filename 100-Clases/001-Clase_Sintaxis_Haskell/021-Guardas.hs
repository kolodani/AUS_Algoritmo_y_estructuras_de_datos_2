{-
    Guardas
-}

-- Las listas por comprension pueden usar guardas para restringir los valores producidos por generadores anteriores
-- > [x | x <- [1..10], even x]

-- usando guardas podemos definir factors
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

-- Como un numero n es primo si y solo si sus unicos factores son 1 y n,
-- podemos definir

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]