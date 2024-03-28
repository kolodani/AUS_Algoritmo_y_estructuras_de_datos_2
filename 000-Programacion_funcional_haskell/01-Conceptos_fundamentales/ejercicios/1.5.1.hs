{-
    1.5.1
    Los numeros de Fibonacci fo=0, f1,... se definen mediante la regla
    f0 = 0, f1 = 1, fn+2 = fn+1 + fn para todo n >= 0.
    dar una definicion de la funcion fib que toma un entero n y devuelve fn.
-}

fibonacci :: Int -> Int
fibonacci n
    | n == 0 = 0
    | n == 1 = 1
    | n >= 2 = (fibonacci (n-1)) + (fibonacci (n-2))
    | otherwise = error "El numero debe ser mayor o igual a 0"