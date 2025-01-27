-- import <module name>

import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

-- ghci> :m + Data.List
-- para importar en terminal

-- ghci> :m + Data.List Data.Map Data.Set
-- para importar varios modulos en la terminal

-- import Data.List (nub, sort)
-- para cargar funciones especificas de un modulo

-- import Data.List hiding (nub)
-- importa un modulo sin la funcion que decidimos esconder

-- import qualified Data.Map
-- importamos modulos asi cuando poseen funciones con nombres iguales a los del prelude

-- import qualified Data.Map as M
-- ahora solamente para llamar funciones de este modulo ponemos asi:
-- M.filter
