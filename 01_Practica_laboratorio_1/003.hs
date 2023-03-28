{-
3) Definir una función que determine si un año es bisiesto o no, de
acuerdo a la siguiente definición:

año bisiesto 1. m. El que tiene un día más que el año común, añadido al mes de febrero. Se repite
cada cuatro años, a excepción del último de cada siglo cuyo número de centenas no sea múltiplo
de cuatro. (Diccionario de la Real Academia Espaola, 22ª ed.)

¿Cuál es el tipo de la función definida?
-}

-- primera manera de hacerlo
bisiesto :: Integral a => a -> [Char]
bisiesto x = if x `mod` 4 == 0
    then (if x `mod` 100 == 0
        then (if x `mod` 400 == 0
            then "es bisiesto"
            else "no es bisiesto")
        else "es bisiesto")
    else "no es bisiesto"

-- segunda manera
modulo4 :: Integral a => a -> Bool
modulo4 x
    |mod x 4 == 0 = True
    |otherwise = False

modulo100 :: Integral a => a -> Bool
modulo100 x
    | mod x 100 == 0 = True
    | otherwise = False

modulo400 :: Integral a => a -> Bool
modulo400 x
    | mod x 400 == 0 = True
    | otherwise = False

bisiesto2 :: Integral a => a -> [Char]
bisiesto2 x
    |not (modulo4 x) = "no es bisiesto"
    |modulo4 x && not (modulo100 x) = "es bisiesto"
    |modulo4 x && modulo100 x && not (modulo400 x) = "no es bisiesto"
    |modulo4 x && modulo100 x && modulo400 x = "es bisiesto"
    |otherwise = "no es bisiesto"

-- mejorando la logica del segundo intento
bisiesto3 :: Integral a => a -> [Char]
bisiesto3 x
    | modulo4 x && not (modulo100 x) = "es bisiesto"
    | modulo4 x && modulo100 x && modulo400 x = "es bisiesto"
    | otherwise = "no es bisiesto"