{-
    Patrones de Listas
-}

-- toda lista no vacia se construye usando el operador (:) llamado "cons"
-- que agrega un elemento al inicio de una lista
-- [1,2,3,4] resulta de 1:(2:(3:(4:[])))
-- donde [] es la lista vacia

-- Por lo tanto, puedo definir funciones usando el patron (x:xs)
-- head :: [a] -> a
-- head (x:_) = x
-- tail :: [a] -> [a]
-- tail (_:xs) = xs

-- (x: xs) solo machea el caso de listas no vacias
-- si aplicamos:
-- head [] nos da un error *** Exception: empty list

-- el patron (x:xs) debe ir entre parentesis ya que la aplicacion tiene prioriedad sobre (:)
