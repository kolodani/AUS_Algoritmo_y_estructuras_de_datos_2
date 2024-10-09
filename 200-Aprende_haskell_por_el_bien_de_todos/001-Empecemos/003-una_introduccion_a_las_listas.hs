-- lista de numeros
lostNumbers = [4, 8, 15, 16, 23, 42]

-- lista de caracteres
hola = ['h','e','l','l','o']

-- concatenador de listas es ++
listasDeNumeros = [1,2,3,4] ++ [9,8,7,6]

listasDeCaracteres = "Hello" ++ " " ++ "World"

-- concatenar en el principio de la lista con :
concatenarRapido = 5:[1,2,3,4]

-- Armado de una lista por elementos
listaArmada = 1:2:3:4:[]

-- obtenemos un valor por su indice, recordar que empiezan con cero
porSuIndice = [6,3,7,3,6,2,5,7,8,5,3,9] !! 4

-- Lista de listas
listaDeListas = [[1,2,3],[2,4,6,8],[1,3,5,7,9],[]]

listaDeListas' = ["Esto", " ", "es", " ", "una", " ", "lista", " ", "de", " ", "listas"]

-- Funciones para operar con listas
a = [5,4,3,2,1]
-- head
cabeza = head a

-- tail
cola = tail a

-- last
ultimo = last a

-- init
inicio = init a

-- tamano de una lista
tamano = length a

-- null dice si la lista esta vacia o no
nulo = null a

-- reverse da vuelta una lista
reverso = reverse a

-- take toma un numero y una lista y extra es cantidad de elementos
tomarNumeros = take 2 a

-- drop funciona de forma similar a take pero se queda con el resto de lo que se saca
sacarNumeros = drop 2 a













