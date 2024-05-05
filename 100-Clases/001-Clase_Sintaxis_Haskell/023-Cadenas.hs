{-
    Cadenas
-}

-- una String es una lista de caracteres [Char]
-- "abc" :: String significa ['a','b','c'] :: [Char]

-- todas las funciones sobre listas son aplicables a String

-- length "abcde"
-- 5

-- las listas por comprension tambien pueden usarse para String

count x xs = length [x' | x' <- xs, x == x']

-- > count 's' "Mississippi"
-- 4
