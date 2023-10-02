{-
    1.3.1
    Supongamos que definimos multiplicar mediante
    multiplicar :: (Integer, Integer) -> Integer
    multiplicar (x, y) = if x == 0 then 0 else x * y
    El simbolo == se usa para comprobar la igualdad entre dos enteros.
    Supongamos que la evaluacion de e1 == e2 comienza por reducir e1 y e2 a
    forma normal y contiuna comprobando si ambos resultados son identicos. bajo
    evaluacion perezosa, ¿cual podria ser el valor de multiplicar (0, infinito)?
    ¿cual seria el valor de multiplicar(infinito, 0)?
-}

multiplicar :: (Integer, Integer) -> Integer
multiplicar (x, y) = if x == 0 then 0 else x * y

-- si hacemos multiplicar (0, infinito) nos dara cero porque el primer elemento
-- es cero, lo que hace que el if nos envie por la rama del then y nos devuelva'
-- cero.
-- si hacemos multiplicar (infinito, 0) nos dara un error porque el primer
-- termino no es cero y nos llevara por la rama del else, lo que sucedera es que
-- tratara de hacer la multiplicacion de infinito por cero, pero primero tiene
-- que saber el valor de infinito y evaluara la expresion. entrando en un bucle
-- infinito. ya que el valor es infinito + 1. y asi sucesivamente.