{-
    2.1.2
    La definicion de (<) dada en el texto para argumentos de tipo Bool hace que
    False < True. Ello refleja el hecho de que False esra antes que True en la
    declaracion de valores de tipo Bool. Naturalmente, esperariamos que tanto
    False < False como True < True se evaluaran a False.
    Ahora considere la definicion alternativa (x < y) = not x || y. donde (||)
    se define mediante ajuste de patrones sobre el argumento izquierdo. ¿Por que
    esta definicion de (<) no es correcta?
-}

-- La definicion alternativa no es correcta porque no se cumple la propiedad de
-- transitividad. Por ejemplo, si x = False, y = True y z = False, entonces
-- (x < y) = True y (y < z) = False, pero (x < z) = True, lo cual es incorrecto.