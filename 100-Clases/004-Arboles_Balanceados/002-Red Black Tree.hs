{-
    Red Black Tree
-}

-- Es un BST cuyos nodos estan coloreados de Rojo o de Negro:

data Color = R | B

data RBT a = E | T Color (RBT a) a (RBT a)

-- y se cumplen los siguientes invariantes sobre los colores:
-- 1. Todos los nodos rojos tienen un padre negro. (Local)
-- 2. Todos los caminos desde la raiz a una hoja tiene el mismo numero de nodos negros (altura negra). (Global)

-- Esto significa que la alruta siempre esta en el orden del log n.

-- Implementamos member para RBTs.

memberRBT :: (Ord a) => a -> RBT a -> Bool
memberRBT a E = False
memberRBT a (T _ l b r)
  | a == b = True
  | a < b = memberRBT a l
  | a > b = memberRBT a r

-- Si ignoramos el color el codigo es el msmo que para BSTs

-- Implementamos insert para RBTs:

insert :: (Ord a) => a -> RBT a -> RBT a
insert x t = makeBlack (ins x t)
  where
    ins x E = T R E x E
    ins x (T c l y r)
      | x < y = balance c (ins x l) y r
      | x > y = balance c l y (ins x r)
      | otherwise = T c l y r

makeBlack :: RBT a -> RBT a
makeBlack E = E
makeBlack (T _ l x r) = T B l x r

-- Para mantener la (altura negra) el nuevo nodod se inserta rojo. (Global)
-- Pero esto puede romper la Propiedad 1, para solucionar esto vamos a rebalancear. (Local)
-- El rebalanceo puede dejarnos una raiz roja, asi que la coloreamos de negro.

-- Luego de insertar el nuevo nodo rojo hay a lo sumo una unica violacion de la propiedad 1, que ocurre cuando el padre es rojo.
-- Esta violacion, puede aparecer en cuatro configuraciones:

-- Implementamos balance para RBTs:

balance :: Color -> RBT a -> a -> RBT a -> RBT a
balance B (T R (T R a x b) y c) z d = T R (T B a x b) y (T B c z d)
balance B (T R a x (T R b y c)) z d = T R (T B a x b) y (T B c z d)
balance B a x (T R (T R b y c) z d) = T R (T B a x b) y (T B c z d)
balance B a x (T R b y (T R c z d)) = T R (T B a x b) y (T B c z d)
balance c l a r = T c l a r

-- Es una implementacion no recursiva.
-- El costo de insert es logaritmico.
