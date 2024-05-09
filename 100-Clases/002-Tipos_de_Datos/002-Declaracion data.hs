{-
    Declaracion data
-}

-- un nuevo tipo completo puede ser definido dando sus valores con la
-- declaracion data

data Bool' = False' | True'

-- declara un nuevo tipo Bool con dos nuevos valores False y True

-- True y False son llamados constructores del tipo Bool'

-- Los nombre de los constructores deben empezar con mayusculas

-- Los constructores definen los distintos elementos del tipo

data Dias = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo

-- Los valores de un nuevo tipo se usan igual que los predefinidos

data Answer = Yes | No | Unknown

answers :: [Answer]
answers = [Yes, No, Unknown]

flip :: Answer -> Answer
flip Yes = No
flip No = Yes
flip Unknown = Unknown

-- Los constructores en las declaraciones data pueden tener parametros

data Shape = Circle Float | Rect Float Float

square :: Float -> Shape
square n = Rect n n

area :: Shape -> Float
area (Circle r) = pi * r ^ 2
area (Rect x y) = x * y

-- Los constructores pueden ser vistos como funciones

-- Circle :: Float -> Shape
-- Rect :: Float -> Float -> Shape

-- No es sorpresa que las declaraciones data pueden tambien tener
-- parametros de tipos

data Maybe' a = Nothing' | Just' a

safediv :: Int -> Int -> Maybe' Int
safediv _ 0 = Nothing'
safediv m n = Just' (m `div` n)

safehead :: [a] -> Maybe' a
safehead [] = Nothing'
safehead xs = Just' (head xs)

-- Maybe es un constructor de tipos ya que dado un tipo a, construye el
-- tipo Maybe a

-- Las declaracines data pueden ser recursivas:

data Nat = Zero | Succ Nat deriving Show

add n Zero = n
add n (Succ m) = Succ (add n m)

-- Nat es un nuevo tipo con costructores Zero :: Nat y Succ :: Nat -> Nat

-- Un valor de tipo Nat puede ser Zero o de la forma Succ n donde n :: Nat
-- Zero, Succ Zero, Succ (Succ Zero), Succ (Succ (Succ Zero)), ...

-- Podemos pensar a los valores del tipo Nat como Numeros naturales donde:
-- Zero representa a 0 y Succ representa la funcion sucesor (1+)
-- Succ ( Succ ( Succ Zero ) ) = (1 + 1 + 1 + 0) = 3

-- Usando recursion es facil definir funciones que conviertan los valores
-- entre los tipos Nat e Int

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Succ n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n-1))

-- Dos naturales pueden ser sumados convirtiendolos en enteros, sumados,
-- y convertidos nuevamente a naturales

add' :: Nat -> Nat -> Nat
add' m n = int2nat (nat2int m + nat2int n)

-- Sin embargo usando recursion la misma funcion se puede definir sin la
-- necesidad de conversion:

add'' :: Nat -> Nat -> Nat
add'' Zero n = n
add'' (Succ m) n = Succ (add'' m n)

-- definir la multiplicacion para Nat

multiplicacion :: Nat -> Nat -> Nat
multiplicacion Zero n = Zero
multiplicacion (Succ m) n = add'' n (multiplicacion m n)

-- definir la exponenciacion para Nat
exponenciacion :: Nat -> Nat -> Nat
exponenciacion Zero Zero = error "inderterminado 0^0"
exponenciacion Zero _ = Zero
exponenciacion _ Zero = Succ Zero
exponenciacion m (Succ n) = multiplicacion m (exponenciacion m n)

a = Zero
b = Succ Zero
c = Succ (Succ Zero)
d = Succ (Succ (Succ Zero))
e = Succ (Succ (Succ (Succ Zero)))

-- Las declaraciones data pueden ser rescursivas y con parametros

data List a = Nil | Cons a (List a)

-- Usando recursion es facil definir funciones que conviertan los valores
-- entre los tipos List a y [a]

to :: List a -> [a]
to Nil = []
to (Cons x xs) = x : to xs

from :: [a] -> List a
from [] = Nil
from (x:xs) = Cons x (from xs)