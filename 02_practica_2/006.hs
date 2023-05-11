{-
6. Definir las siguientes funciones sobre árboles binarios de búsqueda (bst):
1. maximum :: BST a → a, que calcula el máximo valor en un bst.
2. checkBST :: BST a → Bool , que chequea si un árbol binario es un bst.
-}

data BST a = EmptyBST | Node (BST a) a (BST a) deriving Show

-- 1
maximumBST :: BST a -> a
maximumBST EmptyBST = error "Empty tree"
maximumBST (Node _ x EmptyBST) = x
maximumBST (Node _ _ r) = maximumBST r


