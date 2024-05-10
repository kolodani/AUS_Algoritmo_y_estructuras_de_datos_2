{-
    Borrado en BSTs
-}

data Bin a = Hoja | Nodo (Bin a) a (Bin a) deriving (Show)

minimumBST :: Bin a -> a
minimumBST (Nodo Hoja a r) = a
minimumBST (Nodo l a r) = minimumBST l

maximumBST :: Bin a -> a
maximumBST (Nodo l a Hoja) = a
maximumBST (Nodo l a r) = maximumBST r

-- para borrar un elemento en un BST primero lo tengo que encontrar:

deleteBST :: (Ord a) => a -> Bin a -> Bin a
deleteBST _ Hoja = Hoja
deleteBST z (Nodo l b r) | z < b = Nodo (deleteBST z l) b r
deleteBST z (Nodo l b r) | z > b = Nodo l b (deleteBST z r)
deleteBST z (Nodo l b r) | z == b = case (l, r) of
  (Hoja, Hoja) -> Hoja
  (Hoja, r) -> r
  (l, Hoja) -> l
  (l, r) -> Nodo l' b' r
    where
      b' = minimumBST r
      l' = deleteBST b' l

-- Una vez encontrado el elemento tenmos que considerar tres casos.