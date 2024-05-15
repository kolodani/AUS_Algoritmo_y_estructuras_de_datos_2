{-
2. Dado el tipo de datos de árboles binarios:
data Arb = E | H Int | N Arb Arb
y el tipo de datos de comandos, para navegar el árbol:
data Cmd = L | R
a) ¿Qué tipo tiene N?
b) Definir la función parcial selec::[Cmd] → Arb → Arb, que selecciona el subárbol correspondiente.
Por ej:
                /\
select [L,R] ( /  \ ) = Hoja 4
              /\   5
             /  \
            3    4
La función selec es parcial, ya que no está definida para listas de comandos erróneas (como por
ejemplo, ir a la izquierda cuando nos encontramos en una hoja).
-}

-- 2. Dado el tipo de datos de árboles binarios:
data Arb = E | H Int | N Arb Arb deriving Show
-- y el tipo de datos de comandos, para navegar el árbol:
data Cmd = L | R deriving Show

-- a) ¿Qué tipo tiene N?
-- Respuesta:
-- N es de tipo Arb -> Arb -> Arb porque recibe dos árboles y devuelve un árbol.
-- como es esto, porque N es un constructor de datos de tipo Arb, y recibe dos parametros de tipo Arb
-- que llamaremos son un arbol izquierdo y un arbol derecho, y devuelve un arbol que es la union de los mismos

-- b) Definir la función parcial selec::[Cmd] → Arb → Arb, que selecciona el subárbol correspondiente.
-- Por ej:
--                 /\
-- select [L,R] ( /  \ ) = Hoja 4
--               /\   5
--              /  \
--             3    4
-- La función selec es parcial, ya que no está definida para listas de comandos erróneas (como por
-- ejemplo, ir a la izquierda cuando nos encontramos en una hoja).
-- Respuesta:
selec::[Cmd] -> Arb -> Arb
selec [] a = a
selec (L:xs) (N a b) = selec xs a
selec (R:xs) (N a b) = selec xs b
selec _ _ = error "No se puede seleccionar"

arbolito = N (N (H 3) (H 4)) (H 5)

