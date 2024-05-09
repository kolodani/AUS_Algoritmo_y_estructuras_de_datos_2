{-
    Expresion case
-}

-- ademas de patter matching en el lado isquierdo de una definicion
-- podemos usar una expresion case

data Nat = Zero | Succ Nat deriving (Show)

esCero :: Nat -> Bool
esCero n = case n of
  Zero -> True
  _ -> False

-- Los patrones de los diferentes casos son intentados en orden