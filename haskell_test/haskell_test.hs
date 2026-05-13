-- testing pattern matching and guards I guess
isXFactorOfY :: Num a => a -> a -> Bool
isXFactorOfY 0 0 = True
isXFactorOfY 0 y = False
isXFactorOfY x 0 = False
isXFactorOfY 1 1 = True
isXFactorOfY 1 y = False
isXFactorOfY x 1 = False
isXFactorOfY x y	| x > y	= False
			| abs(x / y) > floor( abs(x)/abs(y) ) = False
			| otherwise = True
