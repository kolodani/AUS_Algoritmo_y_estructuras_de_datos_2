{-
gestor de proyecto: ID y peso, mas importante mas peso de la tarea
-}

-- a)
-- <Completar> <Completar> = Int
-- <Completar> id = String
-- <Completar> tarea = (Id, peso)
-- data gestor = vacio | gs <Completar> tarea <Completar>

type Peso = Int

type Id = String

type Tarea = (Id, Peso)

data Gestor = Vacio | Gs Gestor Tarea Gestor deriving (Show)

-- b)
-- I)
-- es un BST
-- escriba la salida
-- [("do",5),("di",2),("da",3),("de",8),("du",8)]
-- llegan en ese orden

--             ("do",5)
--           /         \
--          /           \
--  ("di",2)             ("de",8)
--        \                /
--         \              /
--       ("da",3)    ("du",8)

-- II)
-- definir agenda que dado un gestor, retorna una lista de Ids ordenados de + a -

agenda :: [Tarea] -> [Tarea]
agenda [] = []
agenda (x : xs) = agenda altaPrioridad ++ [x] ++ agenda bajaPrioridad
  where
    altaPrioridad = [a | a <- xs, (extraer a) > (extraer x)]
    bajaPrioridad = [b | b <- xs, (extraer b) <= (extraer x)]

extraer :: Tarea -> Peso
extraer (i, p) = p
