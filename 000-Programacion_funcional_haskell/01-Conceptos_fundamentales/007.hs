fact :: Integer -> Integer
fact n = if n == 0 then 1 else n * fact (n - 1)

fact' :: Integer -> Integer
fact' n
    | n < 0   = error "argumento negativo para fact"
    | n == 0  = 1
    | n > 0   = n * fact' (n - 1)