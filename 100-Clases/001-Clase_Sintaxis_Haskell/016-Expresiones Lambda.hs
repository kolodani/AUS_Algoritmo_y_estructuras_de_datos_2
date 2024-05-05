{-
    Expresiones Lambda
-}

-- Las funciones pueden construirse sin nombres usando expresiones lambda:
-- \x -> x + x

-- es la funcion que toma como entrada x y retorna el resultado x + x
-- el simbolo \ es la letra griega lambda y en el tecclado se escribe como \
-- en haskell el uso de lambda para las funciones sin nombres proviene del calculo lambda que es la teoria funcional en la que se basa haskell

-- las funciones lambdas son utiles para evitar darles nombres a funciones que van a ser usadas una sola vez:

odds n = map f [0 .. n - 1]
  where
    f x = x * 2 + 1


-- puede escribirse mas sinteticamente:

odds' n = map (\x -> x * 2 + 1) [0 .. n - 1]
