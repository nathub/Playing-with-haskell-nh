main :: IO()
main = print "Main method!"

-- testing pattern matching and guards
-- isXFactorOfY :: Num a => a -> a -> Bool MY definition, which caused compile error
isXFactorOfY :: (RealFrac a, Integral a) => a -> a -> Bool -- GHCi 's suggested , still broken
isXFactorOfY 0 0 = True
isXFactorOfY 0 y = False
isXFactorOfY x 0 = False
isXFactorOfY 1 1 = True
isXFactorOfY 1 y = False
isXFactorOfY x 1 = False
isXFactorOfY x y        | x > y = False
                        | abs(y / x) > floor( abs $ y / x ) = False
                        | otherwise = True

-- Watching peppidesu video https://www.youtube.com/watch?v=7awJDYMXtXE

myfactorial :: Int -> Int
myfactorial 0 = 1
myfactorial n
    | n < 0 = 1
    | otherwise = n * myfactorial (n-1)

mytake :: Integer -> [a] -> [a]
mytake 0 _ = []
mytake _ [] = []
mytake n (x:xs) = x : mytake (n-1) xs

myelem :: [a] -> a -> Bool
myelem [] _ = False
myelem (x:xs) d = d == x || myelem xs d 