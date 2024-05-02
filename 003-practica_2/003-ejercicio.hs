{-
3. Dado el tipo de datos
data CList a = EmptyCL | CUnit a | Consnoc a (CList a) a
a) Implementar las operaciones de este tipo algebraico teniendo en cuenta que:
Las funciones de acceso son headCL, tailCL, isEmptyCL,isCUnit.
headCL y tailCL no están definidos para una lista vacı́a.
headCL toma una CList y devuelve el primer elemento de la misma
(el de más a la izquierda).
tailCL toma una CList y devuelve la misma sin el primer elemento.
isEmptyCL aplicado a una CList devuelve True si la CList es vacı́a (EmptyCL)
o False en caso contrario.
isCUnit aplicado a una CList devuelve True sii la CList tiene un solo
elemento (CUnit a) o False en caso contrario.
b) Definir una función reverseCL que toma una CList y devuelve su inversa.
c) Definir una función inits que toma una CList
y devuelve una CList con todos los posibles inicios de la CList.
d) Definir una función lasts que toma una CList
y devuelve una CList con todas las posibles terminaciones de la CList.
e) Definir una función concatCL que toma una CList de CList
y devuelve la CList con todas ellas concatenadas
-}

data CList a = EmptyCL | CUnit a | Consnoc a (CList a) a deriving (Show)

-- a)
-- headCL
headCL :: CList a -> a
headCL EmptyCL = error "EmptyCL, lista vacia"
headCL (CUnit a) = a
headCL (Consnoc a _ _) = a

-- tailCL
tailCL :: CList a -> CList a
tailCL EmptyCL = error "EmptyCL, lista vacia"
tailCL (CUnit a) = EmptyCL
tailCL (Consnoc _ EmptyCL a) = CUnit a
tailCL (Consnoc a xs b) = Consnoc (headCL xs) (tailCL xs) b

-- isEmptyCL
isEmptyCL :: CList a -> Bool
isEmptyCL EmptyCL = True
isEmptyCL _ = False

-- isCUnit
isCUnit :: CList a -> Bool
isCUnit (CUnit a) = True
isCUnit _ = False

-- b) Definir una función reverseCL que toma una CList y devuelve su inversa.
reverseCL :: CList a -> CList a
reverseCL EmptyCL = EmptyCL
reverseCL (CUnit a) = CUnit a
reverseCL (Consnoc a xs b) = Consnoc b (reverseCL xs) a

-- c) Definir una función inits que toma una CList y devuelve una CList con todos los posibles inicios de la CList.
cons :: a -> CList a -> CList a
cons a EmptyCL = CUnit a
cons a (CUnit b) = Consnoc a EmptyCL b
cons a (Consnoc b xs c) = Consnoc a (cons b xs) c

inits :: CList a -> CList (CList a)
inits EmptyCL = CUnit EmptyCL
inits (CUnit a) = Consnoc EmptyCL EmptyCL (CUnit a)
inits (Consnoc a xs b) = Consnoc EmptyCL (inits (cons a xs)) (Consnoc a xs b)

-- d) Definir una función lasts que toma una CList y devuelve una CList con todas las posibles terminaciones de la CList.
snoc :: CList a -> a -> CList a
snoc EmptyCL a = CUnit a
snoc (CUnit a) b = Consnoc a EmptyCL b
snoc (Consnoc a xs b) c = Consnoc a (snoc xs b) c

lasts :: CList a -> CList (CList a)
lasts EmptyCL = EmptyCL
lasts (CUnit a) = Consnoc (CUnit a) EmptyCL EmptyCL
lasts (Consnoc a xs b) = Consnoc (Consnoc a xs b) (lasts (snoc xs b)) EmptyCL

-- e) Definir una función concatCL que toma una CList de CList y devuelve la CList con todas ellas concatenadas
concatCL :: CList (CList a) -> CList a
concatCL EmptyCL = EmptyCL
concatCL (CUnit a) = a
concatCL (Consnoc a xs b) = concatCL (snoc xs b)
