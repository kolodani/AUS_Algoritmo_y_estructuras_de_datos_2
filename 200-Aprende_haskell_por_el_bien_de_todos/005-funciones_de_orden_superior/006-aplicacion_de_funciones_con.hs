{-
($) :: (a -> b) -> a -> b
f $ x = f x
-}

ejemplo :: [Double]
ejemplo = map ($ 3) [(4 +), (10 *), (^ 2), sqrt]