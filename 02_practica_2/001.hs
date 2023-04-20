{-
El modelo de color RGB es un modelo aditivo que tiene al rojo, verde y azul como colores
primarios. Cualquier otro color se expresa en términos de las proporciones de estos tres colores que
es necesario combinar en forma aditiva para obtenerlo. Dichas proporciones caracterizan a cada
color de manera biunı́voca, por lo que usualmente se utilizan estos valores como representación de
un color.
Definir un tipo Color en este modelo y una función mezclar que permita obtener el promedio
componente a componente entre dos colores.
-}

-- hecho con type
type Red = Int
type Green = Int
type Blue = Int

type Color = (Red, Green, Blue)

mezclar :: Color -> Color -> Color
mezclar (r1, g1, b1) (r2, g2, b2) = (div (r1 + r2) 2, div (g1 + g2) 2, div (b1 + b2) 2)

-- hecho con data
data ColorD = RGB Red Green Blue

mezclarD :: ColorD -> ColorD -> ColorD
mezclarD (RGB r1 g1 b1) (RGB r2 g2 b2) = RGB (div (r1 + r2) 2) (div (g1 + g2) 2) (div (b1 + b2) 2)