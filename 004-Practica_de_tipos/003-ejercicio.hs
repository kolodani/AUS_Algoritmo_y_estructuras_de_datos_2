{-
3. Un lenguaje imperativo simple sólo permites variables de un único tipo, para esto se mantiene
un estado con el nombre de las variables y sus valores. Un Estado es una estructura secuencial for-
mada por un nombre de variable y el valor correspondiente. Se requiere las siguientes operaciones
sobre Estado :
inicial : Estado a
update : Nombre → A → Estado a → Estado a
lookfor : Nombre → Estado a → Maybe a
free : Nombre → Estado a → Estado a
donde
* inicial representa el estado inicial de un programa donde no sean definido ninguna variable
* update permite actualizar el valor de una variable existente y si la variable no existe la agrega
al estado con el valor dado.
* lookfor dado el nombre de una variable permite obtener el valor de esta si es que existe en
el estado.
* free dado el nombre de una variable la elimina del estado.
Definir los tipo de dato para Nombre y Estado e implementar las operaciones dadas.
-}

data Nombre = Nombre String deriving (Show, Eq)
data Estado a = Estado [(Nombre, a)] deriving Show

inicial :: Estado a
inicial = Estado []

update :: Nombre -> a -> Estado a -> Estado a
update n v (Estado xs) = Estado $ (n, v) : filter (\(n', _) -> n /= n') xs

lookfor :: Nombre -> Estado a -> Maybe a
lookfor n (Estado xs) = lookup n xs

free :: Nombre -> Estado a -> Estado a
free n (Estado xs) = Estado $ filter (\(n', _) -> n /= n') xs
