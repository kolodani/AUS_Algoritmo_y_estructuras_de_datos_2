doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleUs2 x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                            then x
                            else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

daniel'vinzia = "Hola soy kolodani"

lostNumbers = [4, 8, 15, 16, 23, 42]

mensaje = "Hello" ++ " " ++ "World"

letraSola = "Daniel" !! 2

numeroSolo = [5, 6, 7, 8, 1, 2, 3] !! 4

cabeza = head [8, 2, 7, 3, 6, 4]

cola = tail [8, 2, 7, 3, 6, 4]

final = last [8, 2, 7, 3, 6, 4]

inicio = init [8, 2, 7, 3, 6, 4]

tamanio = length [5, 4, 3, 2, 1, 2, 3, 4, 5]

reversa = reverse [2, 4, 6, 8]

tomar = take 4 [1, 3, 5, 7, 9, 11, 13, 15]

soltar = drop 2 [1, 3, 5, 7, 9, 11, 13, 15]

maximo = maximum [1, 3, 5, 20, 30, 7, 9, 11, 13, 15]

minimo = minimum [20, 30, 7, 9, 11, 13, 15]

sumatoria = sum [1, 2, 3, 4, 5, 6, 7, 8, 9]

producto = product [1, 2, 3, 4, 5, 6, 7, 8, 9]

cienNumeros = [1..100]

abcedario = ['A'..'Z']

pares = [2,4..100]

impares = [1,3..99]


