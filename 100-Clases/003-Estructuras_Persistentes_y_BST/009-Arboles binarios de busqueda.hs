{-
    Arboles binarios de busqueda
-}

-- Los arboles binarios de busqueda son arboles ordenados.

-- El elemento de cada nodo es mayor que los elementos del subarbol izquierdo
-- y menor que los elementos del subarbol derecho.

-- Supone definida una relacion de orden entre los elementos de sus nodos.

-- Puede haber distintos BST para un mismo conjunto de elementos.

-- Con mas precision, una arbol binario de busqueda (BST) es un arbol
-- binario t tal que
    -- Si t es una Hoja es un BST
    -- Si t es un Nodo l a r, tanto l como r tiene que ser BST, y se tiene que cumplir que:
        -- Si y es un valor en algun nodo de l, entonces y <= a
        -- Si y es un valor en algun nodo de r, entonces y > a

