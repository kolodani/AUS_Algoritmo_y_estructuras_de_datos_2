import Data.List
import Data.Function

intermedioLetras :: [Char]
intermedioLetras = intersperse '.' "MONKEY"

intermedioNumeros :: [Integer]
intermedioNumeros = intersperse 0 [1, 2, 3, 4, 5, 6]

intermedioListas1 :: [Char]
intermedioListas1 = intercalate " " ["hey", "there", "guys"]

intermedioListas2 :: [Integer]
intermedioListas2 = intercalate [0, 0, 0] [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

transponer1 :: [[Integer]]
transponer1 = transpose [[1,2,3],[4,5,6],[7,8,9]]

transponer2 :: [[Char]]
transponer2 = transpose ["hey","there","guys"]

sumaPolinomios :: [Integer]
sumaPolinomios = map sum $ transpose [[0, 3, 5, 9], [10, 0, 0, 9], [8, 5, 1, -1]]

concatenador1 :: [Char]
concatenador1 = concat ["foo", "bar", "car"]

concatenador2 :: [Integer]
concatenador2 = concat [[3, 4, 5], [2, 3, 4], [2, 1, 1]]

concatenarMapeo :: [Integer]
concatenarMapeo = concatMap (replicate 4) [1 .. 3]

yy1 :: Bool
yy1 = and $ map (>4) [5,6,7,8]

yy2 :: Bool
yy2 = and $ map (==4) [4,4,4,3,4]

or1 :: Bool
or1 = or $ map (==4) [2,3,4,5,6,1]

or2 :: Bool
or2 = or $ map (>4) [1,2,3]

algo1 :: Bool
algo1 = any (==4) [2,3,5,6,1,4]

algo2 :: Bool
algo2 = any (`elem` ['A'..'Z']) "HEYGUYSwhatsup"

todo1 :: Bool
todo1 = all (>4) [6,9,10]

todo2 :: Bool
todo2 = all (`elem` ['A'..'Z']) "HEYGUYSwhatsup"

iterador1 :: [Integer]
iterador1 = take 10 $ iterate (*2) 1

iterador2 :: [[Char]]
iterador2 = take 3 $ iterate (++ "haha") "haha"

divideListas1 :: ([Char], [Char])
divideListas1 = splitAt 3 "heyman"

divideListas2 :: ([Char], [Char])
divideListas2 = splitAt 100 "heyman"

divideListas3 :: ([Char], [Char])
divideListas3 = splitAt (-3) "heyman"

divideListas4 :: [Char]
divideListas4 = let (a, b) = splitAt 3 "foobar" in b ++ a

tomaMientras1 :: [Integer]
tomaMientras1 = takeWhile (>3) [6,5,4,3,2,1,2,3,4,5,4,3,2,1]

tomaMientras2 :: [Char]
tomaMientras2 = takeWhile (/=' ') "This is a sentence"

tomaMientrasEje :: Integer
tomaMientrasEje = sum $ takeWhile (< 10000) $ map (^ 3) [1 ..]

descartaMientras1 :: [Char]
descartaMientras1 = dropWhile (/= ' ') "This is a sentence"

descartaMientras2 :: [Integer]
descartaMientras2 = dropWhile (< 3) [1, 2, 2, 2, 3, 4, 5, 4, 3, 2, 1]

laBolsa :: (Double, Int, Int, Int)
laBolsa = head (dropWhile (\(val, y, m, d) -> val < 1000) stock)
    where stock = [(994.4,2008,9,1),(995.2,2008,9,2),(999.2,2008,9,3),(1001.4,2008,9,4),(998.3,2008,9,5)]

espamear :: [Char]
espamear = let (fw, rest) = span (/=' ') "This is a sentence"
    in "First word:" ++ fw ++ ", the rest:" ++ rest

quiebre :: ([Integer], [Integer])
quiebre =  break (==4) [1,2,3,4,5,6,7]

quiebre1 :: ([Integer], [Integer])
quiebre1 = span (/= 4) [1, 2, 3, 4, 5, 6, 7]

ordenador1 :: [Integer]
ordenador1 = sort [8,5,3,2,1,6,4,2]

ordenador2 :: [Char]
ordenador2 = sort "This will be sorted soon"

agrupador1 :: [[Integer]]
agrupador1 = group [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 2, 2, 2, 5, 6, 7]

agruparOrdenado :: [(Integer, Int)]
agruparOrdenado = map (\l@(x:xs) -> (x,length l)) . group . sort $ [1,1,1,1,2,2,2,2,3,3,2,2,2,5,6,7]

inicioCola1 :: [[Char]]
inicioCola1 = inits "w00t"

inicioCola2 :: [[Char]]
inicioCola2 = tails "w00t"

inicioCola3 :: [([Char], [Char])]
inicioCola3 = let w = "w00t" in zip (inits w) (tails w)

search1 :: (Eq a) => [a] -> [a] -> Bool
search1 needle haystack =
    let nlen = length needle
    in  foldl (\acc x -> if take nlen x == needle then True else acc) False (tails haystack)

buscadorMejorado1 :: Bool
buscadorMejorado1 = "cat" `isInfixOf` "im a cat burglar"

buscadorMejorado2 :: Bool
buscadorMejorado2 = "Cat" `isInfixOf` "im a cat burglar"

buscadorMejorado3 :: Bool
buscadorMejorado3 = "cats" `isInfixOf` "im a cat burglar"

enPrincipioFin1 :: Bool
enPrincipioFin1 = "hey" `isPrefixOf` "hey there!"

enPrincipioFin2 :: Bool
enPrincipioFin2 = "hey" `isPrefixOf` "oh hey there!"

enPrincipioFin3 :: Bool
enPrincipioFin3 = "there!" `isSuffixOf` "oh hey there!"

enPrincipioFin4 :: Bool
enPrincipioFin4 = "there!" `isSuffixOf` "oh hey there"

particiones1 :: ([Char], [Char])
particiones1 = partition (`elem` ['A' .. 'Z']) "BOBsidneyMORGANeddy"

particiones2 :: ([Integer], [Integer])
particiones2 = partition (> 3) [1, 3, 5, 6, 3, 2, 1, 0, 3, 7]

particiones3 :: ([Char], [Char])
particiones3 = span (`elem` ['A' .. 'Z']) "BOBsidneyMORGANeddy"

encontrar1 :: Maybe Integer
encontrar1 = find (>4) [1,2,3,4,5,6]

encontrar2 :: Maybe Integer
encontrar2 = find (>9) [1,2,3,4,5,6]

-- find :: (a -> Bool) -> [a] -> Maybe a

elementoIndice1 :: Maybe Int
elementoIndice1 = 4 `elemIndex` [1,2,3,4,5,6]

elementoIndice2 :: Maybe Int
elementoIndice2 = 10 `elemIndex` [1,2,3,4,5,6]

elementoIndice3 :: [Int]
elementoIndice3 = ' ' `elemIndices` "Where are the spaces?"

encontrarIndice1 :: Maybe Int
encontrarIndice1 = findIndex (== 4) [5, 3, 2, 1, 6, 4]

encontrarIndice2 :: Maybe Int
encontrarIndice2 = findIndex (== 7) [5, 3, 2, 1, 6, 4]

encontrarIndice3 :: [Int]
encontrarIndice3 = findIndices (`elem` ['A' .. 'Z']) "Where Are The Caps?"

zipiando3 :: [Integer]
zipiando3 = zipWith3 (\x y z -> x + y + z) [1,2,3] [4,5,2,2] [2,2,3]

zipiando4 :: [(Integer, Integer, Integer, Integer)]
zipiando4 = zip4 [2,3,3] [2,2,2] [5,5,3] [2,2,2]

lineas1 :: [String]
lineas1 = lines "first line\nsecond line\nthird line"

inlinear1 :: String
inlinear1 = unlines ["first line", "second line", "third line"]

palabras1 :: [String]
palabras1 = words "hey these are the words in this sentence"

palabras2 :: [String]
palabras2 = words "hey these           are    the words in this\nsentence"

palabras3 :: String
palabras3 = unwords ["hey", "there", "mate"]

ancestrales1 :: [Integer]
ancestrales1 = nub [1, 2, 3, 4, 3, 2, 1, 2, 3, 4, 3, 2, 1]

ancestrales2 :: [Char]
ancestrales2 = nub "Lots of words and stuff"

division1 :: [Integer]
division1 = [1 .. 10] \\ [2, 5, 9]

division2 :: [Char]
division2 = "Im a big baby" \\ "big"

uniones1 :: [Char]
uniones1 = "hey man" `union` "man what's up"

uniones2 :: [Integer]
uniones2 = [1 .. 7] `union` [5 .. 10]

interseccion1 :: [Integer]
interseccion1 = [1..7] `intersect` [5..10]

insertar1 :: [Integer]
insertar1 = insert 4 [3,5,1,2,8,2]

insertar2 :: [Integer]
insertar2 = insert 4 [1,3,4,4,1]

insertar3 :: [Integer]
insertar3 = insert 4 [1, 2, 3, 5, 6, 7]

insertar4 :: [Char]
insertar4 = insert 'g' $ ['a' .. 'f'] ++ ['h' .. 'z']

insertar5 :: [Integer]
insertar5 = insert 3 [1, 2, 4, 3, 2, 1]

values :: [Double]
values = [-4.3, -2.4, -1.2, 0.4, 2.3, 5.9, 10.5, 29.1, 5.3, -2.4, -14.5, 2.9, 2.3]

ejemplos1 :: [[Double]]
ejemplos1 = groupBy (\x y -> (x > 0) == (y > 0)) values

usandoOn :: [[Double]]
usandoOn = groupBy ((==) `on` (> 0)) values

listado :: [[Integer]]
listado = [[5,4,5,4,4],[1,2,3],[3,5,4,3],[],[2],[2,2]]

ordenando1 :: [[Integer]]
ordenando1 = sortBy (compare `on` length) listado
