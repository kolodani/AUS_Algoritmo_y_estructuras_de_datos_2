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

-- primero definimos el tipo CList a, que puede ser EmptyCL, CUnit a o Consnoc a (CList a) a, siendo cada una de estas
-- tres posibilidades un caso base. EmptyCL es la lista vacía, CUnit a es una lista con un solo elemento y
-- Consnoc a (CList a) a es una lista que tiene un elemento al principio y otro al final, y entre ellos una lista.
-- luego definimos las funciones headCL, tailCL, isEmptyCL e isCUnit, que son funciones de acceso a los elementos de la
-- lista. headCL toma una CList y devuelve el primer elemento de la misma, tailCL toma una CList y devuelve la misma sin
-- el primer elemento, isEmptyCL aplicado a una CList devuelve True si la CList es vacía (EmptyCL) o False en caso
-- contrario, e isCUnit aplicado a una CList devuelve True si la CList tiene un solo elemento (CUnit a) o False en caso
-- contrario.

-- b) Definir una función reverseCL que toma una CList y devuelve su inversa.
reverseCL :: CList a -> CList a
reverseCL EmptyCL = EmptyCL
reverseCL (CUnit a) = CUnit a
reverseCL (Consnoc a xs b) = Consnoc b (reverseCL xs) a

-- reverseCL toma una CList y devuelve su inversa. Si la lista es vacía, devuelve la lista vacía. Si la lista tiene un
-- solo elemento, devuelve la lista con ese elemento. Si la lista tiene más de un elemento, devuelve la lista con el
-- último elemento al principio y el primero al final, y entre ellos la lista inversa de la lista original.
-- para el ultimo caso usamos recursion, logrando que la lista se vaya invirtiendo hasta llegar al caso de que la lista
-- sea de un solo elemento.

-- c) Definir una función inits que toma una CList y devuelve una CList con todos los posibles inicios de la CList.
cons :: a -> CList a -> CList a
cons a EmptyCL = CUnit a
cons a (CUnit b) = Consnoc a EmptyCL b
cons a (Consnoc b xs c) = Consnoc a (cons b xs) c

inits :: CList a -> CList (CList a)
inits EmptyCL = CUnit EmptyCL
inits (CUnit a) = Consnoc EmptyCL EmptyCL (CUnit a)
inits (Consnoc a xs b) = Consnoc EmptyCL (inits (cons a xs)) (Consnoc a xs b)

-- para definir inits, primero definimos la función cons, que toma un elemento y una CList y devuelve una CList con el
-- elemento al principio y la lista original al final. Si es una EmptyCL, devuelve una CUnit con el elemento. Si es un
-- CUnit, devuelve un Consnoc con el elemento al principio y el elemento de la lista original al final. Si es un
-- Consnoc, devuelve un Consnoc con el elemento al principio y la lista original al final, y entre ellos la lista
-- original con el primer elemento al principio. Luego definimos inits, que toma una CList y devuelve una CList con
-- todos los posibles inicios de la CList. Si la lista es vacía, devuelve una CUnit con la lista vacía. Si la lista
-- tiene un solo elemento, devuelve un Consnoc con la lista vacía al principio y el elemento al final. Si la lista tiene
-- más de un elemento, devuelve un Consnoc con la lista vacía al principio y la lista de inits de la lista con el primer
-- elemento al principio, y entre ellos un Consnoc con el primer elemento al principio y la lista original al final.

-- d) Definir una función lasts que toma una CList y devuelve una CList con todas las posibles terminaciones de la CList.
snoc :: CList a -> a -> CList a
snoc EmptyCL a = CUnit a
snoc (CUnit a) b = Consnoc a EmptyCL b
snoc (Consnoc a xs b) c = Consnoc a (snoc xs b) c

lasts :: CList a -> CList (CList a)
lasts EmptyCL = EmptyCL
lasts (CUnit a) = Consnoc (CUnit a) EmptyCL EmptyCL
lasts (Consnoc a xs b) = Consnoc (Consnoc a xs b) (lasts (snoc xs b)) EmptyCL

-- similar a inits, primero definimos la función snoc, que toma una CList y un elemento y devuelve una CList con el
-- elemento al final y la lista original al principio. Si es una EmptyCL, devuelve una CUnit con el elemento. Si es un
-- CUnit, devuelve un Consnoc con el elemento de la lista original al principio y el elemento al final. Si es un
-- Consnoc, devuelve un Consnoc con la lista original al principio y la lista de snoc de la lista con el último elemento
-- al final, y entre ellos un Consnoc con el último elemento al final y la lista original al principio. Luego definimos
-- lasts, que toma una CList y devuelve una CList con todas las posibles terminaciones de la CList. Si la lista es
-- vacía, devuelve la lista vacía. Si la lista tiene un solo elemento, devuelve un Consnoc con la lista de un solo
-- elemento al principio y la lista vacía al final. Si la lista tiene más de un elemento, devuelve un Consnoc con la
-- lista con el último elemento al final y la lista de lasts de la lista con el último elemento al final al principio, y
-- entre ellos la lista vacía.

-- e) Definir una función concatCL que toma una CList de CList y devuelve la CList con todas ellas concatenadas
concatCL :: CList (CList a) -> CList a
concatCL EmptyCL = EmptyCL
concatCL (CUnit a) = a
concatCL (Consnoc a xs b) = concatCL (snoc xs b)

-- concatCL toma una CList de CList y devuelve la CList con todas ellas concatenadas. Si la lista es vacía, devuelve la
-- lista vacía. Si la lista tiene un solo elemento, devuelve la lista. Si la lista tiene más de un elemento, devuelve la
-- lista con el último elemento de la lista al principio y la lista de concatCL de la lista con el último elemento al
-- principio al final.

-- ejemplos
a = EmptyCL
b = CUnit 1
c = Consnoc 1 (CUnit 2) 3
d = Consnoc 1 (Consnoc 2 (CUnit 3) 4) 5
e = Consnoc 1 (Consnoc 2 (Consnoc 3 (CUnit 4) 5) 6) 7
