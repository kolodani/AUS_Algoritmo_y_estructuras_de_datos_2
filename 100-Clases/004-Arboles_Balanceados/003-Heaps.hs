{-
    Heaps
-}

-- Los Heaps (o monticulos) son arboles que permiten un acceso eficiente al minimo elemento:
-- 1. Invariante Heap: todo nodo es menor a todos los valores de sus hijos.
-- 2. El minimo esta siempre en la raiz.
-- 3. Las operaciones de un heap son:
--    - insert :: Org a => a -> Heap a -> Heap a
--    - findMin :: Org a => Heap a -> a
--    - deleteMin :: Org a => Heap a -> Heap a
