{-
    Arboles binarios
-}

-- Un arbol binario es un arbol en el que cada nodo puede tener como maximo
-- dos hijos.
-- En haskell representamos un arbol binario con la siguiente tipo de datos:

data Bin a = Hoja | Nodo (Bin a) a (Bin a) deriving Show

-- Definimos funciones sobre los arboles mediante Pattern Matching y recursion:

member :: Eq a => a -> Bin a -> Bool
member a Hoja = False
member a (Nodo l b r) = a == b || member a l || member a r

-- Cuantos elementos visita member para encontrar el elemento buscado?
-- En el peor caso, recorre todos los nodos del arbol
