{-
    2.1.3
    En logica, la implementacion, denotada por =>, se define mediante la
    propiedad de que x => y es falso solo si x es cierto e y es falso.
    Dar una definicion formal de la implementacion como operacion sobre Bool.
-}

-- La implementacion se define como:
(==>)   :: Bool -> Bool -> Bool
x ==> y = if x then y else False