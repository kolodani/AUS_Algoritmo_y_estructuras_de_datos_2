{-
    2.1.1
    Definir and y or usando expresiones condicionales
-}

and'     :: Bool -> Bool -> Bool
and' x y = if x then y else False

or'     :: Bool -> Bool -> Bool
or' x y = if x then True else y