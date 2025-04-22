module Practica0 where

import Data.List

{-
3) Definir una función que determine si un año es bisiesto o no, de
acuerdo a la siguiente definición:

año bisiesto 1. m. El que tiene un día más que el año común, añadido al mes de febrero. Se repite
cada cuatro años, a excepción del último de cada siglo cuyo número de centenas no sea múltiplo
de cuatro. (Diccionario de la Real Academia Espaola, 22ª ed.)

¿Cuál es el tipo de la función definida?
-}

bisiesto x
  | mod x 400 == 0 = "Bisiesto"
  | mod x 100 == 0 = "No Bisiesto"
  | mod x 4 == 0 = "Bisiesto"
  | otherwise = "No Bisiesto"
