{-
Consideremos un editor de lı́neas simple. Supongamos que una Lı́nea es una secuencia de
caracteres c1 , c2, . . . , cn junto con una posición p, siendo 0 ⩽ p ⩽ n, llamada cursor
(consideraremos al cursor a la izquierda de un caracter que será borrado o insertado,
es decir como el cursor de la mayorı́a de los editores).
Se requieren las siguientes operaciones sobre lı́neas:

vacı́a :: Lı́nea
moverIzq :: Lı́nea → Lı́nea
moverDer :: Lı́nea → Lı́nea
moverIni :: Lı́nea → Lı́nea
moverFin :: Lı́nea → Lı́nea
insertar :: Char → Lı́nea → Lı́nea
borrar :: Lı́nea → Lı́nea

La descripción informal es la siguiente:
(1) la constante vacı́a denota la lı́nea vacı́a,
(2) la operación moverIzq mueve el cursor una posición a la izquierda (siempre que ellos sea posible),
(3) análogamente para moverDer ,
(4) moverIni mueve el cursor al comienzo de la lı́nea,
(5) moverFin mueve el cursor al final de la lı́nea,
(6) la operación borrar elimina el caracterer que se encuentra a la izquierda del cursor,
(7) insertar agrega un caracter en el lugar donde se encontraba el cursor
y lo mueve una posición a la derecha.
Definir un tipo de datos Lı́nea e implementar las operaciones dadas.
-}

-- Linea data
data Linea = Linea [Char] Int deriving (Show)

-- Linea type
type Linea' = ([Char], Int)

-- vacı́a :: Lı́nea
vacia :: Linea
vacia = Linea "" 0

vacia' :: Linea'
vacia' = ("", 0)

-- moverIzq :: Lı́nea → Lı́nea
moverIzq :: Linea -> Linea
moverIzq (Linea s 0) = Linea s 0
moverIzq (Linea s p) = Linea s (p - 1)

moverIzq' :: Linea' -> Linea'
moverIzq' (s, 0) = (s, 0)
moverIzq' (s, p) = (s, p - 1)

-- moverDer :: Lı́nea → Lı́nea

moverDer :: Linea -> Linea
moverDer (Linea s p)
  | p == length s = Linea s p
  | otherwise = Linea s (p + 1)

moverDer' :: Linea' -> Linea'
moverDer' (s, p)
  | p == length s = (s, p)
  | otherwise = (s, p + 1)

-- moverIni :: Lı́nea → Lı́nea
moverIni :: Linea -> Linea
moverIni (Linea s p) = Linea s 0

moverIni' :: Linea' -> Linea'
moverIni' (s, p) = (s, 0)

-- moverFin :: Lı́nea → Lı́nea
moverFin :: Linea -> Linea
moverFin (Linea s p) = Linea s (length s)

moverFin' :: Linea' -> Linea'
moverFin' (s, p) = (s, length s)

-- insertar :: Char → Lı́nea → Lı́nea
insertar :: Char -> Linea -> Linea
insertar c (Linea s p) = Linea (take p s ++ [c] ++ drop p s) (p + 1)

insertar' :: Char -> Linea' -> Linea'
insertar' c (s, p) = (take p s ++ [c] ++ drop p s, p + 1)

-- borrar :: Lı́nea → Lı́nea
borrar :: Linea -> Linea
borrar (Linea s p) = Linea (take (p - 1) s ++ drop p s) (p - 1)

borrar' :: Linea' -> Linea'
borrar' (s, p) = (take (p - 1) s ++ drop p s, p - 1)

-- definimos primero el tipo linea, que contiene una lista de caracteres y un entero que representa la posicion del
-- cursor. luego definimos las funciones que se nos piden:
-- vacia simplemente devuelve una linea con una lista vacia y el cursor en 0
-- moverIzq mueve el cursor una posicion a la izquierda, si el cursor ya esta en 0 no hace nada
-- moverDer mueve el cursor una posicion a la derecha, si el cursor ya esta en el final de la lista no hace nada
-- moverIni mueve el cursor al principio de la lista, poniendo el cursor en 0
-- moverFin mueve el cursor al final de la lista, poniendo el cursor en la longitud de la lista
-- insertar agrega un caracter en la posicion del cursor y mueve el cursor una posicion a la derecha
-- borrar elimina el caracter en la posicion del cursor y mueve el cursor una posicion a la izquierda