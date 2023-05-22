{-
8. Definir una función fromOrdList :: [a ] → RBT a, que cree un red black tree a partir de una
lista ordenada sin elementos repetidos. La función debe ser de orden O(n).
-}

data Color = R | B deriving (Show, Eq)
data RBT a = E | T Color (RBT a) a (RBT a) deriving (Show, Eq)

fromOrdList :: [a] -> RBT a
fromOrdList [] = E
fromOrdList xs = T B (fromOrdList (take (div (length xs) 2) xs)) (xs !! div (length xs) 2) (fromOrdList (drop (div (length xs) 2 + 1) xs))
