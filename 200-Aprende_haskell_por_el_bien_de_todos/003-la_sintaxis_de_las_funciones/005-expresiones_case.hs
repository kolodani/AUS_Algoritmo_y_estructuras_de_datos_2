head' :: [a] -> a
head' [] = error "head no funciona con listas vacias!"
head' (x:_) = x

head2 :: [a] -> a
head2 xs = case xs of [] -> error "head no funciona con listas vacias!"
                      (x:_) -> x

describeList :: [a] -> String
describeList xs = "La lista es" ++ case xs of []  -> "una lista vacia."
                                              [x] -> "una lista unitaria."
                                              xs  -> "una lista larga."

describeList2 :: [a] -> String
describeList2 xs = "La lista es " ++ what xs
    where what []  = "una lista vacia."
          what [x] = "una lista unitaria."
          what xs  = "una lista larga."

