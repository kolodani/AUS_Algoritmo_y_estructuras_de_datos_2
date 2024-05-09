{-
    Declaracion de tipos
-}

-- En haskell podemos definir un nuevo nombre par un tipo existente
-- usando una delaracion type

type String' = [Char]

-- String es un sinonimo del tipo [Char]

-- Los sinonimos de tipo hace que ciertos declaraciones de tipo sean mas
-- faciles de leer

type Pos = (Int, Int)

origin :: Pos
origin = (0, 0)

left :: Pos -> Pos
left (x, y) = (x - 1, y)

-- Como en las funciones, la declaracion de tipos puede tener parametros:

type Par a = (a, a)

mult :: Par Int -> Int
mult (x, y) = x * y

copy :: a -> Par a
copy x = (x, x)

-- Las declaraciones de tipo pueden anidarse
type Pos' = (Int, Int)

type Trans = Pos' -> Pos'

-- pero no pueden ser recursivos
-- type Tree = (Int, [Tree])
