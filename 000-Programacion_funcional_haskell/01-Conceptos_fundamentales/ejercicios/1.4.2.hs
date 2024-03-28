{-
    1.4.2
    supongamos que currificamos los argumentos de la funcion delta, de modo que
    escribiremos delta a b c en lugar de delta (a,b,c). ¿Cual es el tipo de la
    version currificada?
-}

delta :: Float -> Float -> Float -> Float
delta a b c = b^2 - 4*a*c