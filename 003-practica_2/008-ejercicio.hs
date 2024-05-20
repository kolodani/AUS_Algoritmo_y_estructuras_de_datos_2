{-
8. Definir una función fromOrdList :: [a ] → RBT a, que cree un red black tree a partir de una
lista ordenada sin elementos repetidos. La función debe ser de orden O(n).
-}

data Color = R | B deriving (Show, Eq)

-- primero definimos el tipo de dato color, que puede ser R o B, de red o black

data RBT a = E | T Color (RBT a) a (RBT a) deriving (Show, Eq)

-- luego definimos el tipo de dato RBT que puede ser un arbol vacio o un nodo que contiene un valor de tipo a, un color
-- y dos subarboles de tipo RBT a, que son los hijos izquierdo y derecho respectivamente. La diferencia que tiene con un
-- arbol binario de busqueda es que cada nodo tiene un color asociado

fromOrdList :: [a] -> RBT a
fromOrdList [] = E
fromOrdList xs = T B (fromOrdList (take (div (length xs) 2) xs)) (xs !! div (length xs) 2) (fromOrdList (drop (div (length xs) 2 + 1) xs))

-- fromOrdList recibe una lista de elementos y devuelve un arbol red black tree. Si la lista es vacia, entonces el arbol
-- es vacio. Si la lista no es vacia, entonces crea un nodo negro con el valor que esta en la mitad de la lista y las
-- ramas izquierda y derecha, se van a ir construyendo con la mitad de adelante de la lista y la mitad final,
-- repitiendo o haciendo recursion para crear las ramas.
