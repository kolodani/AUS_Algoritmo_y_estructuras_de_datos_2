{-
7. La definición de member dada en teorı́a (la cual determina si un elemento está en un bst)
realiza en el peor caso 2 ∗ d comparaciones, donde d es la altura del árbol. Dar una definición
de menber que realice a lo sumo d + 1 comparaciones. Para ello definir member en términos de
una función auxiliar que tenga como parámetro el elemento candidato, el cual puede ser igual al
elemento que se desea buscar (por ejemplo, el último elemento para el cual la comparación de
a ⩽ b retornó True) y que chequee que los elementos son iguales sólo cuando llega a una hoja del
árbol.
-}

data Tree a = EmptyT | NodeT (Tree a) a (Tree a) deriving Show

member :: Ord a => a -> Tree a -> Bool
member e EmptyT = False
member e (NodeT t1 x t2) | e == x = True
                         | e < x = member e t1
                         | otherwise = member e t2