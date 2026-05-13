data MyValue = MyInt Int | MyString String
is_zero :: MyValue -> Bool
is_zero (MyInt 0) = True
is_zero _         = False

main :: IO()
main=do
    
    let
        
        zeroTest1 :: Bool
        zeroTest1 = is_zero 0
        
        zeroTest2 :: Bool
        zeroTest2 = is_zero 1
            
        zeroTest3 :: Bool
        zeroTest3 = is_zero "K"
        
    
    print zeroTest1
    print zeroTest2
    print zeroTest3
    

