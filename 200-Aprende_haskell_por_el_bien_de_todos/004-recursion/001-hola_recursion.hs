-- en haskell no hay bucles for ni while pero si hay recursion
-- porque se da esto, ya que viene de la matematica
-- y tambien porque en los lenguajes funcion se declara lo que es y no como obtenerlo

-- ejemplo de recurcion es fibonacci por ejemplo

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

