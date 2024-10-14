lucky :: (Integral a) => a -> String
lucky 7 = "El siete de la suerte!!!"
lucky x = "Lo siento, no es tu dia de suerte!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "Uno!"
sayMe 2 = "Dos!"
sayMe 3 = "Tres!"
sayMe 4 = "Cuatro!"
sayMe 5 = "Cinco!"
sayMe x = "No entre 1 y 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

primero :: (a, b, c) -> a
primero (x, _, _) = x

segundo :: (a, b, c) -> b
segundo (_, y, _) = y

tercero :: (a, b, c) -> c
tercero (_, _, z) = z

sumarVectores :: (Num a) => (a, a, a) -> (a, a, a) -> (a, a, a)
sumarVectores (x1, y1, z1) (x2, y2, z2) = (x1 + x2, y1 + y2, z1 + z2)

sumarComponentes :: (Num a) => [(a, a)] -> [a]
sumarComponentes xs = [a + b | (a, b) <- xs]

head' :: [a] -> a
head' [] = error "Hey, no puedes utiliar head con una lista vacia!"
head' (x : _) = x

tell :: (Show a) => [a] -> String
tell [] = "La lista esta vacia"
tell (x : []) = "La lista tiene un elemento: " ++ show x
tell (x: y : []) = "La lista tiene dos elementos: " ++ show x ++ " y " ++ show y
tell (x : y : _) = "La lista es larga, Los dos primeros elementos son: " ++ show x ++ " y " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Una cadena vacia!"
capital all@(x:_) = "La primera letra de " ++ all ++ " es " ++ [x]

