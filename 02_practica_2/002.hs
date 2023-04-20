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

data Linea = Linea String Int

vacia :: Linea
vacia = Linea "" 0

moverIzq :: Linea -> Linea
moverIzq (Linea s p) = Linea s (p-1)

moverDer :: Linea -> Linea
moverDer (Linea s p) = Linea s (p+1)

moverIni :: Linea -> Linea
moverIni (Linea s p) = Linea s 0

moverFin :: Linea -> Linea
moverFin (Linea s p) = Linea s (length s)

insertar :: Char -> Linea -> Linea
insertar c (Linea s p) = Linea (take p s ++ [c] ++ drop p s) (p+1)

borrar :: Linea -> Linea
borrar (Linea s p) = Linea (take (p-1) s ++ drop p s) (p-1)

-- usando type
type Linea' = (String, Int)

vacia' :: Linea'
vacia' = ("", 0)

moverIzq' :: Linea' -> Linea'
moverIzq' (s, p) = (s, p-1)

moverDer' :: Linea' -> Linea'
moverDer' (s, p) = (s, p+1)

moverIni' :: Linea' -> Linea'
moverIni' (s, p) = (s, 0)

moverFin' :: Linea' -> Linea'
moverFin' (s, p) = (s, length s)

insertar' :: Char -> Linea' -> Linea'
insertar' c (s, p) = (take p s ++ [c] ++ drop p s, p+1)

borrar' :: Linea' -> Linea'
borrar' (s, p) = (take (p-1) s ++ drop p s, p-1)
