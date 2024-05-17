{-
1. Definir las siguientes funciones en forma recursiva:
-}

-- a) borrarUltimo que dada una lista borra el último elemento de la lista. No utilizar reverse, ni tail .
borrarUltimo :: [Int] -> [Int]
borrarUltimo [x] = []
borrarUltimo (x : xs) = x : borrarUltimo xs

-- esta solucion lo que propone es lo siguiente, usando pattern matching, si la lista tiene un solo elemento, devuelve
-- una lista vacia, si tiene mas de un elemento, devuelve el primer elemento y el resultado de aplicar la funcion de
-- forma recursiva con el reto de la lista

-- b) collect :: [(k , v )] → toma un lista de pares (clave, valor) y asocia cada clave única con todos
-- los valores con los que estaba apareada originalmente. Por ejemplo: collect
collect :: [Char] -> [([Char], Int)] -> [Int]
collect _ [] = []
collect a ((k, v) : xs) = if a == k then v : collect a xs else collect a xs

-- esta solucion propone lo siguiente, si la clave es igual a la clave del primer elemento de la lista de pares,
-- agrega el valor a la lista que esta creando, y luego aplica la funcion de forma recursiva con el resto de la lista
-- si no es igual, aplica la funcion de forma recursiva con el resto de la lista

-- c) serie que se comporta de la siguiente manera: serie [1, 2, 3] = [[ ], [1], [1, 2], [1, 2, 3]] Dar su
-- tipo más general.
seriar :: [Int] -> [[Int]]
seriar [] = []
seriar xs = xs : seriar (borrarUltimo xs)

serie :: [Int] -> [[Int]]
serie xs = [] : reverse (seriar xs)

-- para poder reciir una lista y devolver una lista de listas que, cada una de sus listas sean la lista vacia, seguido
-- de listas que agregan de a un elemento de la lista original, haciendo que si tengo [1, 2, 3] devuelva
-- [[], [1], [1, 2], [1, 2, 3]]
-- primero con la funcion seriar, creo una listas de listas que toma a la lista original, y le va agaregando la de forma
-- recursiva, el resultado de aplicar la funcion borrarUltimo a la lista original, dandome como resultado
-- [[1, 2, 3], [1, 2], [1]]
-- luego a esta lista de listas la damos vuelta con reverse, para que quede en el orden que queremos, y le agregamos la
-- lista vacia al principio, para que quede [[], [1], [1, 2], [1, 2, 3]]

-- d) paresIguales :: Int → Int → Int → Int → Bool toma 4 números enteros y retorna True si de
-- dos en dos son iguales (en cualquier orden), en los demás casos retorna False. Por ejemplo:
-- paresIguales 3 1 1 2 = False paresIguales 3 1 3 1 = True paresIguales 3 3 1 1 = True
-- paresIguales 3 1 1 3 = True
paresIguales :: Int -> Int -> Int -> Int -> Bool
paresIguales a b c d
  | caso0 = False
  | caso1 = True
  | caso2 = True
  | caso3 = True
  | otherwise = False
  where
    caso0 = a == b && a == c && a == d
    caso1 = a == b && c == d
    caso2 = a == c && b == d
    caso3 = a == d && b == c

-- en este caso, tenemos que definir cuantas soluciones tiene nuestro problema, encontramos que tiene 4 soluciones, que
-- son i,i,i,i - i,i,j,j - i,j,i,j - i,j,j,i, entonces usamos para esto usamos guardas, y definimos cada caso con un
-- where, donde definimos cada caso, y si alguno de los casos se cumple, devolvemos True, si no, devolvemos False

-- e) isosceles :: Int → Int → Int → Bool que dadas la longitud de los lados de un triángulo nos
-- dice si es un triángulo isósceles.
isosceles :: Int -> Int -> Int -> Bool
isosceles a b c
  | a == b && a == c = False
  | a == b || a == c || b == c = True
  | otherwise = False

-- en este ejercicio, tenemos que definir si un triangulo es isosceles, para eso, recibimos 3 enteros que representan
-- el largo de los dados de un triangulo, primero evaluamos que no sea un triangulo equilatero, porque si no lo
-- hicieramos asi nos daria que es un triangulo isosceles, porque veria que tiene dos lados iguales, por eso primero
-- evaluamos que los tres lados sean iguales, si no lo son, evaluamos si dos lados son iguales, si lo son, osea que
-- si es isosceles, devolvemos True, si no, el caso otherwise, que representaria que ningun lado es igual a otro, o
-- dicho de otra forma, si es escaleno, devolvemos False

-- f ) ror que dada una lista xs y un entero n, tal que n ⩽ lenght xs, rota los primeros n elementos
-- de xs a la derecha: ror 3 [1, 2, 3, 4, 5] = [4, 5, 1, 2, 3]. Definir una versión recursiva de ror ,
-- sin usar drop, take ni tail .
cabeza :: Int -> [Int] -> [Int]
cabeza 0 [] = []
cabeza 0 xs = []
cabeza n (x : xs) = x : cabeza (n - 1) xs

cola :: Int -> [Int] -> [Int]
cola _ [] = []
cola n (x : xs) = if n <= 0 then x : cola (n - 1) xs else cola (n - 1) xs

ror :: Int -> [Int] -> [Int]
ror n xs = cola n xs ++ cabeza n xs

-- primero definimos dos funciones, cabeza y cola, que nos van a servir para dividir la lista en dos partes
-- la funcion cabeza, toma el entero y la lista, lo que hace de forma recursiva es tomar de la lista la cantidad de
-- valores igual a los del entero, en este caso cabeza 3 [1, 2, 3, 4, 5] = [1, 2, 3]
-- la funcion cola, toma el entero y la lista, lo que hace de forma recursiva es no agregar los valores a la lista
-- hasta que llegue a la cantidad de el entero, en este caso cola 3 [1, 2, 3, 4, 5] = [4, 5]
-- por ultimo, la funcion ror, toma el entero y la lista, lo que hace es concatenaar la dos listas en una lista nueva
-- dando como resultado ror 3 [1, 2, 3, 4, 5] = [4, 5, 1, 2, 3]

-- g) upto :: Int → Int → [Int] que dado dos números enteros n y m devuelve la lista [n, n + 1, n +
-- 2, ..., m ] en caso que n ⩽ m y la lista [ ] en otro caso. No usar listas por comprensión.
upto :: Int -> Int -> [Int]
upto n m = if n <= m then n : upto (n + 1) m else []

-- lo que haremos aqui sera parecido a lo anterior, crearemos un lista que empiece en n y termine en m, la recursividad
-- se encargara de ir sumando 1 a n hasta que n sea igual a m, si n es mayor a m, no agrega nada a la lista, termina
-- agregando la lista vacia y termina la recursividad
-- por ejemplo: upto 4 9 = [4, 5, 6, 7, 8, 9]

-- h) eco que devuelve la cadena obtenida a partir de la cadena xs repitiendo cada elemento tantas
-- veces como indica su posición. No usar listas por comprensión.
-- Por ejemplo: eco "hola" = "hoolllaaaa"
eco :: [Char] -> [Char]
eco xs = foldr (++) [] (map (\(c, i) -> reververar (c, i)) (transformador xs))

transformador :: [Char] -> [(Char, Int)]
transformador xs = zip xs [1 ..]

reververar :: (Char, Int) -> [Char]
reververar (_, 0) = []
reververar (c, i) = c : reververar (c, i - 1)

-- aqui nos encontramos con una funcion que recive una lista de caracteres, y lo que hace, es repetir cada caracter
-- la cantidad de veces que indica su posicion, lo que hacemos es usar la funcion transformador
-- la funcion transformador, aplica a la lista de caracteres y a la lista de enteros que va de 1 a la longitud de la
-- la lista de caracteres, la funcion zip, creando una lista de tuplas
-- lo que nos da como resultado
-- transformador "hola" = [(h,1),(o,2),(l,3),(a,4)]
-- luego con la funcion reververar, lo qeu hacemos es de forma recursiva hacer una lista que guarde cada caracter la
-- cantidad de caracteres que le dice el entero que esta en la tupla
-- reververar [(h,1),(o,2),(l,3),(a,4)] = [hoolllaaaa]
-- por ultimo la eco lo que hace es aplicar la funcion reververar a cada tupla de la lista de tuplas, y luego con
-- foldr (++) [] lo que hace es concatenar todas las listas que se generaron con reververar
