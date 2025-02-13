import Data.Char
import Data.List
import Data.Function

alfanumerico1 :: Bool
alfanumerico1 = all isAlphaNum "bobby283"

alfanumerico2 :: Bool
alfanumerico2 = all isAlphaNum "eddy the fish!"

palabras1 :: [String]
palabras1 = words "hey guys its me"

palabras2 :: [[Char]]
palabras2 = groupBy ((==) `on` isSpace) "hey guys its me"

palabras3 :: [[Char]]
palabras3 = filter (not . any isSpace) . groupBy ((==) `on` isSpace) $ "hey guys its me"

ejemplos1 :: GeneralCategory
ejemplos1 = generalCategory ' '

ejemplos2 :: GeneralCategory
ejemplos2 = generalCategory 'A'

ejemplos3 :: GeneralCategory
ejemplos3 = generalCategory 'a'

ejemplos4 :: GeneralCategory
ejemplos4 = generalCategory '.'

ejemplos5 :: GeneralCategory
ejemplos5 = generalCategory '9'

ejemplos6 :: [GeneralCategory]
ejemplos6 = map generalCategory " \t\nA9?|"

convertidores1 :: [Int]
convertidores1 =  map digitToInt "34538"

convertidores2 :: [Int]
convertidores2 =  map digitToInt "FF85AB"

enteroADigitos1 :: Char
enteroADigitos1 = intToDigit 15

enteroADigitos2 :: Char
enteroADigitos2 = intToDigit 5

ordYChr1 :: Int
ordYChr1 = ord 'a'

ordYChr2 :: Char
ordYChr2 =  chr 97

ordYChr3 :: [Int]
ordYChr3 = map ord "abcdefgh"

encode :: Int -> String -> String
encode shift msg =
  let ords = map ord msg
      shifted = map (+ shift) ords
   in map chr shifted

codificar1 :: String
codificar1 = encode 3 "Heeeeey"

codificar2 :: String
codificar2 = encode 4 "Heeeeey"

codificar3 :: String
codificar3 = encode 1 "abcd"

codificar4 :: String
codificar4 = encode 5 "Marry Christmas! Ho ho ho!"

decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg

decodificar1 :: String
decodificar1 = encode 3 "Im a little teapot"

decodificar2 :: String
decodificar2 = decode 3 "Lp#d#olwwoh#whdsrw"

decodificar3 :: String
decodificar3 = decode 5 . encode 5 $ "This is a sentence"
