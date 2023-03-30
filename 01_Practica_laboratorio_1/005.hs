{-
5) Definir las siguientes funciones usando listas por comprensión:

a) 'divisors', que dado un entero positivo 'x' devuelve la
lista de los divisores de 'x' (o la lista vacía si el entero no es positivo)

b) 'matches', que dados un entero 'x' y una lista de enteros descarta
de la lista los elementos distintos a 'x'

c) 'cuadrupla', que dado un entero 'n', devuelve todas las cuadruplas
'(a,b,c,d)' que satisfacen a^2 + b^2 = c^2 + d^2,
donde 0 <= a, b, c, d <= 'n'

(d) 'unique', que dada una lista 'xs' de enteros, devuelve la lista
'xs' sin elementos repetidos
unique :: [Int] -> [Int]
-}

-- a) 'divisors', que dado un entero positivo 'x' devuelve la
-- lista de los divisores de 'x' (o la lista vacía si el entero no es positivo)

divisors :: Integral a => a -> [a]
divisors x = [y | y <- [1..x], mod x y == 0]
{-
    tomo todos los numeros de 1 a x y los divido por x, haciendo uso de la funcion mod
    si el resto es 0, entonces es divisor de x y lo agrego a la lista de divisores
    la expresion se lee como:
    los y valores que estan entre 1 y x, que al dividirlos por x, el resto es 0
-}

-- b) 'matches', que dados un entero 'x' y una lista de enteros descarta
-- de la lista los elementos distintos a 'x'

matches :: Int -> [Int] -> [Int]
matches x xs = [y | y <- xs, y == x]
{-
    tomo todos los elementos de la lista xs y los comparo con x
    si son iguales, los agrego a la lista de matches
    la expresion se lee como:
    los y elementos de la lista xs, que son iguales a x
-}

-- c) 'cuadrupla', que dado un entero 'n', devuelve todas las cuadruplas
-- '(a,b,c,d)' que satisfacen a^2 + b^2 = c^2 + d^2,
-- donde 0 <= a, b, c, d <= 'n'

cuadrupla :: Int -> [(Int, Int, Int, Int)]
cuadrupla n = [(a, b, c, d) | a <- [0..n], b <- [0..n], c <- [0..n], d <- [0..n], a^2 + b^2 == c^2 + d^2]
{-
    tomo todos los valores de a, b, c y d que estan entre 0 y n
    y los comparo con la expresion a^2 + b^2 == c^2 + d^2
    si es verdadero, entonces agrego la cuadrupla a la lista de cuadruplas
    la expresion se lee como:
    las cuadruplas (a, b, c, d) que estan entre 0 y n, que cumplen la expresion a^2 + b^2 == c^2 + d^2
-}


-- (d) 'unique', que dada una lista 'xs' de enteros, devuelve la lista
-- 'xs' sin elementos repetidos
-- unique :: [Int] -> [Int]
unique :: [Int] -> [Int]
unique xs = [x | (x, y) <- zip xs [0..], x `notElem` take y xs]
{-
    tomo todos los elementos de la lista xs y los comparo con los elementos de la lista xs
    que estan antes de ellos
    si no estan en la lista, los agrego a la lista de unicos
    la expresion se lee como:
    los x elementos de la lista xs, que no estan en la lista xs que esta antes de ellos
-}