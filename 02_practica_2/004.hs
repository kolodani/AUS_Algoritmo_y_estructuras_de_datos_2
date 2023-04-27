{-
4. Dado el siguiente tipo algebraico:
data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp
a) Defina un evaluador eval :: Aexp → Int. ¿Cómo maneja los errores de división por 0?
b) Defina un evaluador seval :: Aexp → Maybe Int.
-}

data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp

-- a)

eval :: Aexp -> Int
eval (Num n) = n
eval (Prod a b) = eval a * eval b
eval (Div a b)
    | eval b == 0 = error "Division por cero"
    | otherwise = eval a `div` eval b
