{-
1.Práctica Tipos - BT - BST - RBT - Leftist Heaps
Dado el siguiente tipo de dato que representa los números naturales:
data Nat = Cero | Succ Nat
a) ¿Qué tipo tiene Succ?
b) Definir la función int2Nat :: Int → Nat que dado un entero retorne su representaciń en Nat
Ejemplo int2Nat 4 = Succ (Succ (Succ (Succ Cero)))
c) Definir la función suma :: Nat → Nat → Nat
NO convertir los Nat a enteros para poder sumarlos.
d) Definir la función nat2Int :: Nat → Int que dado un Nat retorne a que entero representa.
-}

data Nat = Cero | Succ Nat deriving Show

-- a) ¿Qué tipo tiene Succ?
-- Respuesta:
-- Succ es de tipo Nat -> Nat, es decir, recibe un Nat y devuelve un Nat
-- como seria esto, Succ recibe un Nat que puede ser Cero o Succ Nat, y devuelve
-- un Nat que es Succ (Succ Nat) o Succ Cero

-- b) Definir la función int2Nat :: Int → Nat que dado un entero retorne su representaciń en Nat
-- Ejemplo int2Nat 4 = Succ (Succ (Succ (Succ Cero)))
-- Respuesta:

int2Nat :: Int -> Nat
int2Nat 0 = Cero
int2Nat n = Succ (int2Nat (n-1))

-- c) Definir la función suma :: Nat → Nat → Nat
-- NO convertir los Nat a enteros para poder sumarlos.
-- Respuesta:

sumaNat :: Nat -> Nat -> Nat
sumaNat Cero Cero = Cero
sumaNat Cero n = n
sumaNat (Succ n) m = Succ (sumaNat n m)

-- d) Definir la función nat2Int :: Nat → Int que dado un Nat retorne a que entero representa.
-- Respuesta:

nat2Int :: Nat -> Int
nat2Int Cero = 0
nat2Int (Succ n) = 1 + nat2Int n
