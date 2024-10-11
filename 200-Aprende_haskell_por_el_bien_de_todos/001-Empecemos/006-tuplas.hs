-- fst toma una tupla y devuelve su primer componente
primera = fst ("Wow", False)

-- snd toma una tupla y devuelve la segunda componente
segunda = snd ("Wow", False)

-- zip toma dos listas y produce un lista de duplas con el tamaño de lista mas corto
uniendo = zip [1,2,3,4,5] [5,5,5,5,5]
uniendo2 = zip [1..5] ["uno","dos","tres","cuatro","cinco"]
uniendo3 = zip [1..10] ["uno","dos","tres","cuatro"]

-- triangulos rectangulos
triangulos = [(a,b,c) | c<- [1..10], b<-[1..c], a <-[1..b], a^2 + b^2 == c^2, a + b + c == 24]