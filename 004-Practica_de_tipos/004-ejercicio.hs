{-
4. Implementar una función que:
a) calcule el número de nodos en un nivel especı́fico de un árbol binario
b) reciba un árbol binario de búsqueda y verifique si es un árbol balanceado, es decir, que la
diferencia de alturas entre su subárbol izquierdo y derecho no sea mayor que 1 para todos
los nodos
c) encuentren el sucesor y el predecesor de un valor dado en un árbol binario de búsqueda. El
sucesor es el valor más pequeño mayor que el valor dado, y el predecesor es el valor más
grande menor que el valor dado
d) dado un Leftist Heaps, retorne una lista con sus elementos ordenados de mayor a menor
e) verifique si un árbol cumple con la propiedad de Leftist Heap
f ) elimine todos los elementos duplicados en un Leftist Heap y devuelva el nuevo heap resultante
g) verifique si un árbol cumple con la propiedad de Red − Black − Tree
-}

data Tree a = EmptyT | NodeT a (Tree a) (Tree a) deriving (Show)

-- a) calcule el número de nodos en un nivel especı́fico de un árbol binario
nodesAtLevel :: Int -> Tree a -> Int
nodesAtLevel _ EmptyT = 0
nodesAtLevel 0 _ = 1
nodesAtLevel n (NodeT _ l r) = nodesAtLevel (n - 1) l + nodesAtLevel (n - 1) r

-- b) reciba un árbol binario de búsqueda y verifique si es un árbol balanceado, es decir, que la
-- diferencia de alturas entre su subárbol izquierdo y derecho no sea mayor que 1 para todos
-- los nodos
isBalanced :: Tree a -> Bool
isBalanced EmptyT = True
isBalanced (NodeT _ l r) = abs (height l - height r) <= 1 && isBalanced l && isBalanced r

height :: Tree a -> Int
height EmptyT = 0
height (NodeT _ l r) = 1 + max (height l) (height r)

-- c) encuentren el sucesor y el predecesor de un valor dado en un árbol binario de búsqueda. El
-- sucesor es el valor más pequeño mayor que el valor dado, y el predecesor es el valor más
-- grande menor que el valor dado
predecesor :: (Ord a) => a -> Tree a -> Maybe a
predecesor _ EmptyT = Nothing
predecesor x (NodeT y l r)
  | x == y = Just y
  | x < y = predecesor x l
  | otherwise = case predecesor x r of
      Just z -> Just z
      Nothing -> Just y

sucesor :: (Ord a) => a -> Tree a -> Maybe a
sucesor _ EmptyT = Nothing
sucesor x (NodeT y l r)
  | x == y = Just y
  | x > y = sucesor x r
  | otherwise = case sucesor x l of
      Just z -> Just z
      Nothing -> Just y

-- d) dado un Leftist Heaps, retorne una lista con sus elementos ordenados de mayor a menor
data LeftistHeap a = Empty | Node a Int (LeftistHeap a) (LeftistHeap a) deriving (Show)

heapToList :: LeftistHeap a -> [a]
heapToList Empty = []
heapToList (Node x _ l r) = x : heapToList l ++ heapToList r

-- e) verifique si un árbol cumple con la propiedad de Leftist Heap
isLeftistHeap :: LeftistHeap a -> Bool
isLeftistHeap Empty = True
isLeftistHeap (Node _ _ l r) = isLeftistHeap l && isLeftistHeap r && rank l >= rank r

rank :: LeftistHeap a -> Int
rank Empty = 0
rank (Node _ r _ _) = r

-- f ) elimine todos los elementos duplicados en un Leftist Heap y devuelva el nuevo heap resultante
deleteDuplicates :: (Ord a) => LeftistHeap a -> LeftistHeap a
deleteDuplicates Empty = Empty
deleteDuplicates (Node x r l r') = Node x r (deleteDuplicates l) (deleteDuplicates r')

-- g) verifique si un árbol cumple con la propiedad de Red − Black − Tree
data Color = R | B deriving (Show)

data RBTree a = E | T Color (RBTree a) a (RBTree a) deriving (Show)

isRedBlackTree :: RBTree a -> Bool
isRedBlackTree E = True
isRedBlackTree (T _ l _ r) = isRedBlackTree l && isRedBlackTree r
