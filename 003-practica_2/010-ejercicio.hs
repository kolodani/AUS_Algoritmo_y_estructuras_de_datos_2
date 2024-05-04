{-
10. Definir una función fromList :: [a ] → Heap a, que cree un leftist heap a partir de una lista,
convirtiendo cada elemento de la lista en un heap de un solo elemento y aplicando la función merge
hasta obtener un solo heap. Aplicar la función merge dlg ne veces, donde n es la longitud de la
lista que recibe como argumento la función, de manera que fromList sea de orden O(n).
-}

type Rank = Int
data Heap a = E | T Rank a (Heap a) (Heap a) deriving Show

fromList xs = let ys = map (\x -> N 0 x E E) xs
                pares [] = []
                pares [x] = [x]
                pares (x:y:xs) = merge x y : pares xs
                g [h] = h
                g hs = g (pares hs)
                in g ys
