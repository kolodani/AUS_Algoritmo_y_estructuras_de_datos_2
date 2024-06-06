{-
1. El modelo de color RGB es un modelo aditivo que tiene al rojo, verde y azul como colores
primarios. Cualquier otro color se expresa en términos de las proporciones de estos tres colores que
es necesario combinar en forma aditiva para obtenerlo. Dichas proporciones caracterizan a cada
color de manera biunı́voca, por lo que usualmente se utilizan estos valores como representación de
un color.
Definir un tipo Color en este modelo y una función mezclar que permita obtener el promedio
componente a componente entre dos colores.
-}

type Red = Int

type Green = Int

type Blue = Int

type Colour = (Red, Green, Blue)

mezclarColour :: Colour -> Colour -> Colour
mezclarColour (r1, g1, b1) (r2, g2, b2) = (div (r1 + r2) 2, div (g1 + g2) 2, div (b1 + b2) 2)

data Colore = RGB Red Green Blue deriving (Show)

mezclarColore :: Colore -> Colore -> Colore
mezclarColore (RGB r1 g1 b1) (RGB r2 g2 b2) = RGB (div (r1 + r2) 2) (div (g1 + g2) 2) (div (b1 + b2) 2)

-- aqui se crea primero el type, red, green, blue, y luego el type colour que es una tupla de estos tres
-- valores. Luego se define la funcion mezclarColour que toma dos colores y devuelve uno solo, lo que
-- hace es sumar los valores de cada color y dividirlos por dos, para obtener el promedio de los colores
-- o dicho en otras palabras, mezclar los colores.
-- luego definimos Colore pero usamos data, lo que hace es recibir tres valores, red, green, blue, y
-- luego definimos la funcion mezclarColore que toma dos colores y devuelve uno solo, haciendo la mezcla
-- de los mismos, planteando una solucion similar a la anterior.
-- la diferencia entre usar type y data es que type es un alias, es decir, un nombre alternativo para un
-- tipo de dato ya existente, mientras que data es una forma de definir un nuevo tipo de dato.