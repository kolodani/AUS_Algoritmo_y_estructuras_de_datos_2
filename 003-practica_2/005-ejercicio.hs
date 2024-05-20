{-
5. Si un árbol binario es dado como un nodo con dos subárboles idénticos se puede aplicar
la técnica sharing, para que los subárboles sean representados por el mismo árbol. Definir las
siguientes funciones de manera que se puedan compartir la mayor cantidad posible de elementos
de los árboles creados:
a) completo :: a → Int → Tree a, tal que dado un valor x de tipo a y un entero d , crea un árbol
binario completo de altura d con el valor x en cada nodo.
b) balanceado :: a → Int → Tree a, tal que dado un valor x de tipo a y un entero n, crea un árbol
binario balanceado de tamaño n, con el valor x en cada nodo.
-}

data Tree a = EmptyT | NodeT (Tree a) a (Tree a) deriving (Show)

-- definimos el tipo de dato Tree que puede ser un arbol vacio o un nodo que contiene un valor de tipo a y dos
-- subarboles de tipo Tree a, que son los hijos izquierdo y derecho respectivamente. Los mismos pueden tener
-- valores o ser arboles vacios.

-- a) completo
completo :: a -> Int -> Tree a
completo x 0 = NodeT EmptyT x EmptyT
completo x d = NodeT (completo x (d - 1)) x (completo x (d - 1))

-- un arbol completo de altura 0 es un nodo con el valor x y dos subarboles vacios. En caso contrario, un arbol
-- completo de altura d es un nodo con el valor x y dos subarboles que son arboles completos de altura d - 1.

-- b) balanceado
balanceado :: a -> Int -> Tree a
balanceado x 0 = EmptyT
balanceado x 1 = NodeT EmptyT x EmptyT
balanceado x n = NodeT (balanceado x (div n 2)) x (balanceado x (div n 2))

-- un arbol balanceado de tamaño 0 es un arbol vacio. Un arbol balanceado de tamaño 1 es un nodo con el valor x y dos
-- subarboles vacios. En caso contrario, un arbol balanceado de tamaño n es un nodo con el valor x y dos subarboles
-- que son arboles balanceados de tamaño n / 2.
