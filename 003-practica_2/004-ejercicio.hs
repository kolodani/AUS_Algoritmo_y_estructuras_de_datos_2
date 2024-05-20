{-
4. Dado el siguiente tipo algebraico:
data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp
a) Defina un evaluador eval :: Aexp → Int. ¿Cómo maneja los errores de división por 0?
b) Defina un evaluador seval :: Aexp → Maybe Int.
-}

data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp

-- primero definimos el tipo Aexp que establece una expresion aritmetica que puede ser un numero, un producto de dos
-- expresiones aritmeticas o una division de dos expresiones aritmeticas. Luego definimos las funciones eval y seval.

-- a) Defina un evaluador eval :: Aexp → Int. ¿Cómo maneja los errores de división por 0?

eval :: Aexp -> Int
eval (Num n) = n
eval (Prod a b) = eval a * eval b
eval (Div a b)
  | eval b == 0 = error "no se puede dividir por cero"
  | otherwise = eval a `div` eval b

-- primero para definir este evaluador, pensamos en las restricciones que tienen las operaciones que realizamos, primero
-- la multiplicacion no tiene ninguna, pero si la division, que es la que nos interesa. Si el divisor es 0, entonces
-- no se puede realizar la division, por lo que lanzamos un error. En caso contrario, realizamos la division.

-- b) Defina un evaluador seval :: Aexp → Maybe Int.

seval :: Aexp -> Maybe Int
seval (Num n) = Just n
seval (Prod a b) = case (seval a, seval b) of
  (Just x, Just y) -> Just (x * y)
  _ -> Nothing
seval (Div a b) = case (seval a, seval b) of
  (Just x, Just y) -> if y == 0 then Nothing else Just (x `div` y)
  _ -> Nothing

-- ahora seval es un evaluador pero que retorna un Maybe Int, por lo que si hay un error, retornamos Nothing, en vez de
-- lanzar un error. En el caso de la division, si el divisor es 0, retornamos Nothing, en caso contrario, retornamos
-- Just (x `div` y) donde x e y son los valores de las expresiones aritmeticas a y b respectivamente.