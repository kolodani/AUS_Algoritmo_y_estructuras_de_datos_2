{-
    Insercion en BSTs
-}

data Bin a = Hoja | Nodo (Bin a) a (Bin a) deriving (Show)

-- Para insertar, recorremos el arbol hasta encontrar una hoja, que
-- transformamos en un nuevo nodo.

insertBST :: (Ord a) => a -> Bin a -> Bin a
insertBST a Hoja = Nodo Hoja a Hoja
insertBST a (Nodo l b r)
  | a == b = Nodo l b r
  | a < b = Nodo (insertBST a l) b r
  | otherwise = Nodo l b (insertBST a r)
