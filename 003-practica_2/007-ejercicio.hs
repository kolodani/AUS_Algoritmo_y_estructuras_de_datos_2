{-
7. La definición de member dada en teorı́a (la cual determina si un elemento está en un bst)
realiza en el peor caso 2 ∗ d comparaciones, donde d es la altura del árbol. Dar una definición
de menber que realice a lo sumo d + 1 comparaciones. Para ello definir member en términos de
una función auxiliar que tenga como parámetro el elemento candidato, el cual puede ser igual al
elemento que se desea buscar (por ejemplo, el último elemento para el cual la comparación de
a ⩽ b retornó True) y que chequee que los elementos son iguales sólo cuando llega a una hoja del
árbol.
-}

data Tree a = EmptyT | NodeT (Tree a) a (Tree a) deriving (Show)

-- definimos el tipo de dato Tree que puede ser un arbol vacio o un nodo que contiene un valor de tipo a y dos
-- subarboles de tipo Tree a, que son los hijos izquierdo y derecho respectivamente. Los mismos pueden tener valores
-- o ser arboles vacios

member :: (Ord t) => t -> Tree t -> Bool
member e EmptyT = False
member e (NodeT t1 x t2)
  | e == x = True
  | e < x = member e t1
  | otherwise = member e t2

-- para definir a member, si el arbol es vacio, entonces el elemento no esta en el arbol. Si el arbol es un nodo, si
-- el elemento es igual al valor del nodo, entonces el elemento esta en el arbol. Si el elemento es menor que el varor
-- del nodo, entonces el elemento esta en el subarbol izquierdo. Si el elemento es mayor que el valor del nodo, entonces
-- el elemento esta en el subarbol derecho.
