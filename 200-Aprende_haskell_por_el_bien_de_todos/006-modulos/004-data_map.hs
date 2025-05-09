import qualified Data.Map as Mapa
import Data.Char


phoneBook :: [(String, String)]
phoneBook =
  [ ("betty", "555-2938"),
    ("bonnie", "452-2928"),
    ("patsy", "493-2928"),
    ("lucille", "205-2928"),
    ("wendy", "939-8282"),
    ("penny", "853-2492")
  ]

findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd . head . filter (\(k, v) -> key == k) $ xs

findKey2 :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey2 key [] = Nothing
findKey2 key ((k, v) : xs) =
  if key == k
    then Just v
    else findKey2 key xs

findKey3 :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey3 key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing

ejemploFindKey1 :: Maybe String
ejemploFindKey1 = findKey3 "penny" phoneBook

ejemploFindKey2 :: Maybe String
ejemploFindKey2 = findKey3 "betty" phoneBook

ejemploFindKey3 :: Maybe String
ejemploFindKey3 = findKey3 "wilma" phoneBook

-- import qualified Data.Map as Map
-- para importar una funcion y renombrarla

nuevoMap1 :: Mapa.Map String String
nuevoMap1 = Mapa.fromList [("betty", "555-2938"), ("bonnie", "452-2928"), ("lucille", "205-2928")]

nuevoMap2 :: Mapa.Map Integer Integer
nuevoMap2 = Mapa.fromList [(1, 2), (3, 4), (3, 2), (5, 5)]

mapaVacio :: Mapa.Map k a
mapaVacio = Mapa.empty

agregarMapa1 :: Mapa.Map Integer Integer
agregarMapa1 = Mapa.insert 3 100 Mapa.empty

agregarMapa2 :: Mapa.Map Integer Integer
agregarMapa2 = Mapa.insert 5 600 (Mapa.insert 4 200 (Mapa.insert 3 100 Mapa.empty))

agregarMapa3 :: Mapa.Map Integer Integer
agregarMapa3 = Mapa.insert 5 600 . Mapa.insert 4 200 . Mapa.insert 3 100 $ Mapa.empty

fromList' :: (Ord k) => [(k, v)] -> Mapa.Map k v
fromList' = foldr (\(k, v) acc -> Mapa.insert k v acc) Mapa.empty

mapaNulo1 :: Bool
mapaNulo1 = Mapa.null Mapa.empty

mapaNulo2 :: Bool
mapaNulo2 = Mapa.null $ Mapa.fromList [(2,3),(5,5)]

diccionarioTamano1 :: Int
diccionarioTamano1 = Mapa.size Mapa.empty

diccionarioTamano2 :: Int
diccionarioTamano2 = Mapa.size $ Mapa.fromList [(2, 4), (3, 3), (4, 2), (5, 4), (6, 4)]

soloElemento1 :: Mapa.Map Integer Integer
soloElemento1 = Mapa.singleton 3 9

soloElemento2 :: Mapa.Map Integer Integer
soloElemento2 = Mapa.insert 5 9 $ Mapa.singleton 3 9

pertenece1 :: Bool
pertenece1 = Mapa.member 3 $ Mapa.fromList [(3,6),(4,3),(6,9)]

pertenece2 :: Bool
pertenece2 = Mapa.member 3 $ Mapa.fromList [(2,5),(4,5)]

mapMapa :: Mapa.Map Integer Integer
mapMapa = Mapa.map (*100) $ Mapa.fromList [(1,1),(2,4),(3,9)]

mapFiltro :: Mapa.Map Integer Char
mapFiltro = Mapa.filter isUpper $ Mapa.fromList [(1,'a'),(2,'A'),(3,'b'),(4,'B')]

inversa :: [(Integer, Integer)]
inversa = Mapa.toList . Mapa.insert 9 2 $ Mapa.singleton 4 3

phoneBook2 :: [(String, String)]
phoneBook2 =
  [ ("betty", "555-2938"),
    ("betty", "342-2492"),
    ("bonnie", "452-2928"),
    ("patsy", "493-2928"),
    ("patsy", "943-2929"),
    ("patsy", "827-9162"),
    ("lucille", "205-2928"),
    ("wendy", "939-8282"),
    ("penny", "853-2492"),
    ("penny", "555-2111")
  ]

phoneBookToMap :: (Ord k) => [(k, String)] -> Mapa.Map k String
phoneBookToMap xs = Mapa.fromListWith (\number1 number2 -> number1 ++ ", " ++ number2) xs

telefonos1 :: Maybe String
telefonos1 = Mapa.lookup "patsy" $ phoneBookToMap phoneBook2

telefonos2 :: Maybe String
telefonos2 = Mapa.lookup "wendy" $ phoneBookToMap phoneBook2

telefonos3 :: Maybe String
telefonos3 = Mapa.lookup "betty" $ phoneBookToMap phoneBook2

maximoMapa :: Mapa.Map Integer Integer
maximoMapa = Mapa.fromListWith max [(2, 3), (2, 5), (2, 100), (3, 29), (3, 22), (3, 11), (4, 22), (4, 15)]

maximoMapa2 :: Mapa.Map Integer Integer
maximoMapa2 = Mapa.fromListWith (+) [(2, 3), (2, 5), (2, 100), (3, 29), (3, 22), (3, 11), (4, 22), (4, 15)]

ultimaMapa :: Mapa.Map Integer Integer
ultimaMapa = Mapa.insertWith (+) 3 100 $ Mapa.fromList [(3, 4), (5, 103), (6, 339)]