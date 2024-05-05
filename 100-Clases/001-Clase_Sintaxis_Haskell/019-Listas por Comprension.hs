{-
    Listas por Comprensión
-}

-- en haskell, una manera de construir listas a partir de listas existentes es con la notacion por comprension

-- [x^2 | x <- [1..5]]

-- describe el lista de {1, 4, 9, 16, 25} o (lo que es lo mismo)
-- el lista de todos los numeros x^2 tal que x sea un elemento del lista {1...5}

-- la expresion x <- [1..5] se llama generador
-- ya que dice como se generan los valores de x

-- un lista por comprension puede tener varios generadores, separados por coma

-- > [(x,y) | x <- [1,2,3], y <- [4,5]]
-- [(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]

-- cuando cambiamos el orden de los generadores cambiamos el orden de los elementos en la lista final

-- > [(x,y) | y <- [4,5], x <- [1,2,3]]
-- [(1,4),(2,4),(3,4),(1,5),(2,5),(3,5)]

-- los multiples generadoes actuan como bucles anidados
-- los generadores posteriores cambian mas rapidamente
