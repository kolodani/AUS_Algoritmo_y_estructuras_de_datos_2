bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= 18.5 = "Tienes infrapeso"
  | bmi <= 25.0 = "Peso normal"
  | bmi <= 30.0 = "Tienes sobrepeso"
  | otherwise = "Obesidad"
  where
    bmi = weight / height ^ 2

bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
  | bmi <= skynny = "Tienes infrapeso"
  | bmi <= normal = "Peso normal"
  | bmi <= fat = "Tienes sobrepeso"
  | otherwise = "Obesidad"
  where
    bmi = weight / height ^ 2
    skynny = 18.5
    normal = 25.0
    fat = 30.0

bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
  | bmi <= skynny = "Tienes infrapeso"
  | bmi <= normal = "Peso normal"
  | bmi <= fat = "Tienes sobrepeso"
  | otherwise = "Obesidad"
  where
    bmi = weight / height ^ 2
    (skynny, normal, fat) = (18.5, 25.0, 30.0)

iniciales :: String -> String -> String
iniciales firstname lastname = [f] ++ "." ++ [l] ++ "."
  where
    (f : _) = firstname
    (l : _) = lastname

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

