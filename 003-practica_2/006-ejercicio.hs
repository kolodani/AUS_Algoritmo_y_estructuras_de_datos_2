{-
6. Definir las siguientes funciones sobre árboles binarios de búsqueda (bst):
1. maximum :: BST a → a, que calcula el máximo valor en un bst.
2. checkBST :: BST a → Bool , que chequea si un árbol binario es un bst.
-}

data BST a = EmptyBST | Node (BST a) a (BST a) deriving (Show)

-- primero definimos el tipo de dato BST que puede ser un arbol vacio o un nodo que contiene un valor de tipo a y dos
-- subarboles de tipo BST a, que son los hijos izquierdo y derecho respectivamente. Los mismos pueden tener valores o
-- ser arboles vacios. Los BST son arboles binarios de busqueda, por lo que los valores de los nodos de los subarboles
-- izquierdo son menores que el valor del nodo y los valores de los nodos de los subarboles derecho son mayores que el
-- valor del nodo.

-- 1. maximum
maximumBST :: BST a -> a
maximumBST EmptyBST = error "error arbol vacio"
maximumBST (Node _ x EmptyBST) = x
maximumBST (Node _ _ r) = maximumBST r

-- maximumBST es una funcion que retorna el valor maximo de un arbol binario de busqueda. Si el arbol es vacio,
-- lanzamos un error. Si el arbol es un nodo con un subarbol derecho vacio, entonces el valor maximo es el valor
-- del nodo. En caso contrario, el valor maximo es el valor maximo del subarbol derecho.

-- 2. checkBST
checkBST :: (Ord a) => BST a -> Bool
checkBST EmptyBST = True
checkBST (Node EmptyBST _ EmptyBST) = True
checkBST (Node EmptyBST x r@(Node _ y _)) = x < y && checkBST r
checkBST (Node l@(Node _ x _) y EmptyBST) = x < y && checkBST l
checkBST (Node l@(Node _ x _) y r@(Node _ z _)) = x < y && y < z && checkBST l && checkBST r

-- checkBST es una funcion que chequea si un arbol binario es un arbol binario de busqueda. Si el arbol es vacio
-- entonces es un arbol binario de busqueda. Si el arbol es un nodo con ambos subarboles vacios, entonces es un
-- arbol binario de busqueda. Si el arbol es un nodo con el subarbol izquierdo vacio y el subarbol derecho no vacio,
-- entonces el valor del nodo es menor que el valor del nodo del subarbol derecho y el subarbol derecho es un arbol
-- binario de busqueda. Si el arbol es un nodo con el subarbol izquierdo no vacio y el subarbol derecho vacio, entonces
-- el valor del nodo es menor que el valor del nodo del subarbol izquierdo y el subarbol izquierdo es un arbol binario
-- de busqueda. Si el arbol es un nodo con ambos subarboles no vacios, entonces el valor del nodo es menor que el valor
-- del nodo del subarbol derecho, el valor del nodo es mayor que el valor del nodo del subarbol izquierdo, el subarbol
-- izquierdo es un arbol binario de busqueda y el subarbol derecho es un arbol binario de busqueda.
