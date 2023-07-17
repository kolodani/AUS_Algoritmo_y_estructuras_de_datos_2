zeroto :: Int -> [Int]
zeroto n = [0..n]

absoluto :: Int -> Int
absoluto n | n >= 0 = n
           | otherwise = -n

factores :: Int -> [Int]
factores n = [x | x <- [1..n], n `mod` x == 0]

primo :: Int -> Bool
primo n = factores n == [1,n]

primos :: Int -> [Int]
primos n = [x | x <- [2..n], primo x]

pares :: [Int] -> [(Int,Int)]
pares xs = zip xs (tail xs)

posisiones :: (Num a1, Enum a1, Eq a2) => a2 -> [a2] -> [a1]
posisiones x xs = [ i|(x',i) <- zip xs [0..], x == x']


cantidad :: Eq a => a -> [a] -> Int
cantidad x xs = length [ x'|x' <- xs, x == x' ]

producto :: Num a => [a] -> a
producto [] = 1
producto (x:xs) = x*producto xs

factorial :: Int -> Int
factorial n = producto [1..n]

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = quickSort chico ++ [x] ++ quickSort grande
                   where
                     chico = [y | y <- xs, y <= x]
                     grande = [y | y <- xs, y > x]

data Booleano = Verdadero | Falso

esBooleano :: Booleano -> Bool
esBooleano Verdadero = True
esBooleano Falso = False

mayorAcero :: Int -> Booleano
mayorAcero n | n > 0 = Verdadero
             | otherwise = Falso

data Digitos = Cero | Uno | Dos | Tres | Cuatro | Cinco | Seis | Siete | Ocho | Nueve

digitosEnteros :: Digitos -> Int
digitosEnteros Cero = 0
digitosEnteros Uno = 1
digitosEnteros Dos = 2
digitosEnteros Tres = 3
digitosEnteros Cuatro = 4
digitosEnteros Cinco = 5
digitosEnteros Seis = 6
digitosEnteros Siete = 7
digitosEnteros Ocho = 8
digitosEnteros Nueve = 9

sumaDigitos :: Digitos -> Digitos -> Int
sumaDigitos x y = digitosEnteros x + digitosEnteros y

numeroDigital :: Digitos -> Digitos -> Digitos -> Int
numeroDigital x y z = digitosEnteros x * 100 + digitosEnteros y * 10 + digitosEnteros z

data Formas = Circulo Float | Rectangulo Float Float deriving Show

cuadrado :: Float -> Formas
cuadrado n = Rectangulo n n

area :: Formas -> Float
area (Circulo r) = pi * r^2
area (Rectangulo b a) = b * a