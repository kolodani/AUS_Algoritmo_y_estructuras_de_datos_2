{-
    Ecuaciones con Guardas
-}

-- Una alternativa a los condicionales es el uso de ecuaciones con guardas

abs n
  | n > 0 = n
  | otherwise = -n

-- se usan para hacer ciertas definiciones mas faciles de leer
signum n
  | n < 0 = -1
  | n == 0 = 0
  | otherwise = 1

-- la condicion otherwise se define en el preludio como
-- otherwise = True
