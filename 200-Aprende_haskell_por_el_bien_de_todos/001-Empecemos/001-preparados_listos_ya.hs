-- Operaciones comunes en haskell
-- Suma
sumaDosNumeros = 2 + 4

-- Producto
productoDosNumeros = 4 * 5

-- Resta
restaDosNumeros = 1892 - 1472

-- Division
divisionDosNumeros = 5 / 2

-- Operaciones mas simples en haskell
operacion1 = (50 * 100) - 4999
operacion2 = 50 * 100 - 4999
operacion3 = 50 * (100 - 4999)

-- Observacion: Para los numeros negativos, siempre van entre parentesis
negativos = 5 * (-3)

-- tambien contamos con algebra booleana
-- Y es &&
yBooleano1 = True && False
yBooleano2 = True && True

-- O es ||
oBooleano1 = False || True
oBooleano2 = False || False

-- Contamos con comprobacion de igualdad
-- Igual
iguales1 = 5 == 5
iguales2 = 1 == 0

-- Diferentes
diferentes1 = 5 /= 5
diferentes2 = 5 /= 4

-- Tambien con palabras
comparandoPalabras1 = "Hola" == "Hola"
comparandoPalabras2 = "Hola" == "hola"

-- suma entre entero y flotante
enteroFlotante = 5 + 4.5

-- funcion sucesor
sucesor = succ 8

-- funcion maximo
maximo1 = max 24 53
maximo2 = max (-9) 0

-- funcion minimo
minimo1 = min 24 53
minimo2 = min (-9) 0

-- Parentesis suman prioridad
prioridad1 = succ 9 * 10
prioridad2 = succ (9 * 10)

-- funciones prefijas e infijas
prefija = div 92 10
infija = 92 `div` 10

