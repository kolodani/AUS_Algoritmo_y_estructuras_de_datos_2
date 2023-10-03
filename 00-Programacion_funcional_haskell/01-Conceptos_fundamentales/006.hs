signo :: Integer -> Integer
signo x
    |x < 0 = -1
    |x == 0 = 0
    |x > 0 = 1

signo :: Integer -> Integer
signo x = if x < 0 then -1 else if x == 0 then 0 else 1
