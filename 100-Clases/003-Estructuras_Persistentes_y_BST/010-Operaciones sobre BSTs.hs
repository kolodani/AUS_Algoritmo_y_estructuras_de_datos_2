{-
    Operaciones sobre BSTs
-}

data Bin a = Hoja | Nodo (Bin a) a (Bin a) deriving (Show)

-- Recorrido inorder de un BST

inorderBST :: Bin a -> [a]
inorderBST Hoja = []
inorderBST (Nodo l a r) = inorderBST l ++ [a] ++ inorderBST r

-- Re-implementamos member para BSTs

memberBST :: (Ord a) => a -> Bin a -> Bool
memberBST a Hoja = False
memberBST a (Nodo l b r)
  | a == b = True
  | a < b = memberBST a l
  | otherwise = memberBST a r

-- Cuantos elementos visita member para encontrar el elemento buscado?
-- En el peor caso, el numero de elementos visitados es igual a la altura del arbol

-- El minimo valor en un BST:

minimumBST :: Bin a -> a
minimumBST (Nodo Hoja a r) = a
minimumBST (Nodo l a r) = minimumBST l

-- El maximo valor en un BST:

maximumBST :: Bin a -> a
maximumBST (Nodo l a Hoja) = a
maximumBST (Nodo l a r) = maximumBST r

-- Implementar checkBST :: Bin a -> Bool que cheque si un arbol es un BST

checkBST :: (Ord a) => Bin a -> Bool
checkBST Hoja = True
checkBST (Nodo l a r) = checkBST l && checkBST r && (maximumBST l <= a) && (a <= minimumBST r)

-- En member, minimum y maximum, toman un timpo relacion a la altura del arbol para ejecutarse.
-- Sobre arboles mas bajos se ejecutan mas rapido.
