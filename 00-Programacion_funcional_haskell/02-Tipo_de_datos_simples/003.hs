bisiesto   :: Int -> Bool
bisiesto y = if y `mod` 100 == 0 then y `mod` 400 == 0 else y `mod` 4 == 0
