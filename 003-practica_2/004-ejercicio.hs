{-
4. Dado el siguiente tipo algebraico:
data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp
a) Defina un evaluador eval :: Aexp → Int. ¿Cómo maneja los errores de división por 0?
b) Defina un evaluador seval :: Aexp → Maybe Int.
-}

data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp

-- a) Defina un evaluador eval :: Aexp → Int. ¿Cómo maneja los errores de división por 0?

eval :: Aexp -> Int
eval (Num n) = n
eval (Prod a b) = eval a * eval b
eval (Div a b)
    |eval b == 0 = error "no se puede dividir por cero"
    |otherwise = eval a `div` eval b

-- b) Defina un evaluador seval :: Aexp → Maybe Int.

seval :: Aexp -> Maybe Int
seval (Num n) = Just n
seval (Prod a b) = case (seval a, seval b) of
    (Just x, Just y) -> Just (x * y)
    _ -> Nothing
seval (Div a b) = case (seval a, seval b) of
    (Just x, Just y) -> if y == 0 then Nothing else Just (x `div` y)
    _ -> Nothing