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

data CList a = EmptyCL | CUnit a | Consnoc a (CList a) a

-- a)
headCL :: CList a -> a
headCL EmptyCL = error "EmptyCL"
headCL (CUnit a) = a
headCL (Consnoc a b c) = a

tailCL :: CList a -> CList a
tailCL EmptyCL = error "EmptyCL"
tailCL (CUnit a) = EmptyCL
tailCL (Consnoc a b c) = Consnoc (headCL b) (tailCL b) c

isEmptyCL :: CList a -> Bool
isEmptyCL EmptyCL = True
isEmptyCL _ = False

isCUnit :: CList a -> Bool
isCUnit (CUnit a) = True
isCUnit _ = False

-- b)
reverseCL :: CList a -> CList a
reverseCL EmptyCL = EmptyCL
reverseCL (CUnit a) = CUnit a
reverseCL (Consnoc a xs b) = Consnoc b (reverseCL xs) a

-- c)
inits :: CList a -> CList (CList a)
inits EmptyCL = EmptyCL
inits (CUnit a) = CUnit EmptyCL
inits (Consnoc a xs b) = Consnoc EmptyCL (inits' (Consnoc a xs b)) (Consnoc a xs b)

inits' :: CList a -> CList (CList a)
inits' EmptyCL = EmptyCL
inits' (CUnit a) = CUnit (CUnit a)
inits' (Consnoc a xs b) = Consnoc EmptyCL (inits' (Consnoc a xs b)) (Consnoc a xs b)

-- d)

lasts :: CList a -> CList (CList a)
lasts EmptyCL = EmptyCL
lasts (CUnit a) = CUnit (CUnit a)
lasts (Consnoc a xs b) = Consnoc (Consnoc a xs b) (lasts' (Consnoc a xs b)) EmptyCL

lasts' :: CList a -> CList (CList a)
lasts' EmptyCL = EmptyCL
lasts' (CUnit a) = CUnit (CUnit a)
lasts' (Consnoc a xs b) = Consnoc (Consnoc a xs b) (lasts' (Consnoc a xs b)) EmptyCL

-- e)
{-
concatCL :: CList (CList a) -> CList a
concatCL EmptyCL = EmptyCL
concatCL (CUnit a) = a
concatCL (Consnoc a xs b) = Consnoc (headCL a) (concatCL (tailCL a)) (headCL b)
-}