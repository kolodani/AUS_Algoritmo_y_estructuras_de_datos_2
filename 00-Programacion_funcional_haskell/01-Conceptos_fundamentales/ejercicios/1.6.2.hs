{-
    1.6.2
    Definir una funcion swap de modo que
        flip (curry f) = curry (f . swap)
    para toda f::(a,b)->c
-}

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)
