{-
    1.6.1
    Dar tipos polimorficos apropiados para las siguientes funciones:
        const x y   = x
        subst f g x = f x (g x)
        aplicar f x = f x
        flip f x y  = f y x
-}

-- const x y   = x
const1 :: a -> b -> a
const1 x y = x

-- subst f g x = f x (g x)
subst1 :: (a -> b -> c) -> (a -> b) -> a -> c
subst1 f g x = f x (g x)

-- aplicar f x = f x
aplicar1 :: (a -> b) -> a -> b
aplicar1 f x = f x

-- flip f x y  = f y x
flip1 :: (a -> b -> c) -> b -> a -> c
flip1 f x y = f y x