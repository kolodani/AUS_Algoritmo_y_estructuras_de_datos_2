{-
(.) :: (b -> c) -> (a -> b) -> a -> c
f . g = \x -> f (g x)
-}

ejemplo :: [Integer]
ejemplo = map (\x -> negate (abs x)) [5, -3, -6, 7, -3, 2, -19, 24]

ejemplo2 :: [Integer]
ejemplo2 = map (negate . abs) [5, -3, -6, 7, -3, 2, -19, 24]

ejemplo3 :: [Integer]
ejemplo3 = map (\xs -> negate (sum (tail xs))) [[1 .. 5], [3 .. 6], [1 .. 7]]

ejemplo4 :: [Integer]
ejemplo4 = map (negate . sum . tail) [[1 .. 5], [3 .. 6], [1 .. 7]]

funcionVP :: Double
funcionVP = sum (replicate 5 (max 6.7 8.9))

funcionVP2 :: Double
funcionVP2 = (sum . replicate 5 . max 6.7) 8.9

funcionVP3 :: Double
funcionVP3 = sum . replicate 5 . max 6.7 $ 8.9

otroEjemplo :: [Integer]
otroEjemplo = replicate 100 (product (map (*3) (zipWith max [1,2,3,4,5] [4,5,6,7,8])))

otroEjemplo2 :: [Integer]
otroEjemplo2 = replicate 100 . product . map (*3) . zipWith max [1,2,3,4,5] $ [4,5,6,7,8]

sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs

sum'2 :: (Num a) => [a] -> a
sum'2 = foldl (+) 0

fn :: (RealFrac a, Integral b, Floating a) => a -> b
fn x = ceiling (negate (tan (cos (max 50 x))))

fn' :: Double -> Integer
fn' = ceiling . negate . tan . cos . max 50

oddSquareSum :: Integer
oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

oddSquareSum2 :: Integer
oddSquareSum2 = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]

oddSquareSum3 :: Integer
oddSquareSum3 =
    let oddSquares = filter odd $ map (^2) [1..]
        belowLimit = takeWhile (<10000) oddSquares
    in  sum belowLimit
