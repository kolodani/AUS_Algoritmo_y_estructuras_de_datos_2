{-
    Leftist Heaps
-}

-- Los Leftist Heaps son estructuras que cumple con el invariante de Heaps y demas:
-- 1. Implementa eficientemente la union de dos heaps:

-- merge :: Ord a => Heap a -> Heap a -> Heap a

-- 2. Invariante Leftist: el rango de cualquier hijo izquierdo es mayor o igual que el de su hermano de la derecha.
-- 3. Rango es la longitud de la espina derecha de cada nodo.

-- Luego tenemos que:
-- 1. La espina derecha es la ruta mas corta a una hoja.
-- 2. Los elementos de la espina derecha estan ordenados.

-- Definimos el siguiente tipo de datos:

type Rank = Int

data Heap a = E | N Rank a (Heap a) (Heap a) deriving (Show)

-- Definimos la funcion merge:

mergeLH :: (Ord a) => Heap a -> Heap a -> Heap a
mergeLH h1 E = h1
mergeLH E h2 = h2
mergeLH h1@(N _ x a1 b1) h2@(N _ y a2 b2) =
  if x <= y
    then makeH x a1 (mergeLH b1 h2)
    else makeH y a2 (mergeLH h1 b2)

-- Decidimos quien es la nueva raiz, debemos determinar los dos sub-arboles que la acompañen:
-- Las espinas derecha (b) se mezclan (merge) para seguir ordenadas y
-- preservar la invariante leftist. Para preservarla definimos makeH:

rankH :: Heap a -> Rank
rankH E = 0
rankH (N r _ _ _) = r

-- Definimos makeH:

makeH :: a -> Heap a -> Heap a -> Heap a
makeH x a b =
  if rankH a >= rankH b
    then N (rankH b + 1) x a b
    else N (rankH a + 1) x b a

-- Tanto rank como makeH no son recursivas.
-- Como la espina derecha es logaritmica, merge es logaritmica.

-- Una vez definido un merge eficiente, el resto de las operaciones son simples:

insertLH :: (Ord a) => a -> Heap a -> Heap a
insertLH x h = mergeLH (N 1 x E E) h

findMinLH :: (Ord a) => Heap a -> a
findMinLH E = error "Empty heap"
findMinLH (N _ x _ _) = x

deleteMinLH :: (Ord a) => Heap a -> Heap a
deleteMinLH E = error "Empty heap"
deleteMinLH (N _ _ a b) = mergeLH a b

-- Dado que mege es logaritmica estonces insertLh y DeleteMinLH tambien.
-- findMinLH no es recursiva y es constante.