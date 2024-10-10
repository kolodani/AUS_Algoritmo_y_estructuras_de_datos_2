-- el doble de los diez primeros numeros naturales
doblePares = [x*2 | x <- [1..10]]

-- alteramos el predicado
doblePares2 = [x*2 | x <- [1..10], x*2 >= 12]

-- lista armada con modulo
listaModulo = [x | x <- [50..100], x `mod` 7 == 3]

-- funcion graciosa
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- eliminando impares
noImpares = [x | x <- [1..10], x /=1, x/=3, x/=5, x/=7, x/=9]

-- dos listas
dosListas = [ x*y | x <- [2,5,10], y <- [8,10,11]]

dosListas2 = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

-- armemos frases
noums = ["gato","perro","caballo"]
adjetives = ["dormilon","comilon","jugueton"]
frasesArmadas = [noum ++ " " ++ adjetive | noum <- noums, adjetive <- adjetives]

-- redefinamos length
length' xs = sum [1 | _ <- xs]

-- tomanso solo las mayusculas
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- eliminando impares de la lista de listas
listaSinImpares xxs = [[x| x <- xs, even x] | xs <- xxs]

