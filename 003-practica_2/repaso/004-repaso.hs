{-
4. Dado el siguiente tipo algebraico:
data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp
a) Defina un evaluador eval :: Aexp → Int. ¿Cómo maneja los errores de división por 0?
b) Defina un evaluador seval :: Aexp → Maybe Int.
-}

data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp

{-
a) Defina un evaluador eval :: Aexp → Int. ¿Cómo maneja los errores de división por 0?
-}

eval :: Aexp -> Int
eval (Num a) = a
eval (Prod a b) = eval a * eval b
eval (Div a b)
  | eval b == 0 = error "No se pude dividir por cero"
  | otherwise = div (eval a) (eval b)

{-
b) Defina un evaluador seval :: Aexp → Maybe Int.
-}

seval :: Aexp -> Maybe Int
seval (Num a) = Just a
seval (Prod a b) = case (seval a, seval b) of
  (Just a, Just b) -> Just (a * b)
  _ -> Nothing
seval (Div a b) = case (seval a, seval b) of
  (Just a, Just b) -> if b == 0 then Nothing else Just (div a b)
  _ -> Nothing
