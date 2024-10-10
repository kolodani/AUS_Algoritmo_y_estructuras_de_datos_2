-- lista de numeros naturales hasta el cien
naturales = [1..100]

-- lista de letras en mayusculas
abecedario = ['A'..'Z']

-- numeros pares hasta el 30
paresLista = [2,4..30]

-- numeros multiplos de 5 al 50
multiploCinco = [5,10..50]

-- lista descendente hay que marcar como tiene que descender
descenso = [20,19..1]

-- haskell es perezoso no va a hacer una lista infinita
multiploTrece1 = [13,26..24*13]
multiploTrece2 = take 24 [13,26..]

-- cycle hace listas infinitas con un ciclo
cicloInfinito1 = take 20 (cycle [1,2,3,4])
cicloInfinito2 = take 100 (cycle "Dani, ")

-- repeat toma una elemento y produce una lista infinita
repetirMucho1 = take 15 (repeat 5)
repetirMucho2 = take 25 (repeat 'A')

-- tambien podemos usar la funcion replicate que hace lo mismo con menos
mejorFuncion = replicate 25 'A'

