-- this is all about pattern matching, which allows us to bind specific values to a specific value of a variable

-- This function will give you a reward for inserting the lucky value 7, for any other value you just weren't lucky enough ;)
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you didn't get the lucky number :("

-- what about the factorial function? Pattern matching can be very usefull here as well. NOTE: You can also see recursion here, the factorial function calls itself!

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

-- we can also implement our own function for the "head" function in lists. NOTE: "_" is the wildcard pattern, you can use this for parts of a function you don't want to use/discard or ignore them.

head' :: [a] -> a
head' [] = error "There is no head in empty lists :("
head' (x:_) = x

main :: IO()
main = do
    putStrLn "Enter a Number: "
    input <- getLine
    let nmb = read input :: Int
    putStrLn (lucky nmb)
    putStrLn(show(factorial nmb) ++ " is the factorial of your lucky number")