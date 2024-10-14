bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
  | bmi <= 18.5 = "Tienes infrapeso"
  | bmi <= 25.0 = "Peso normal"
  | bmi <= 30.0 = "Tienes sobrepeso"
  | otherwise = "Obesidad"

bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
  | weight / height ^ 2 <= 18.5 = "Tienes infrapeso"
  | weight / height ^ 2 <= 25.0 = "Peso normal"
  | weight / height ^ 2 <= 30.0 = "Tienes sobrepeso"
  | otherwise = "Obesidad"

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

max2 :: (Ord a) => a -> a -> a
max2 a b | a > b = a | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT