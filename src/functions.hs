-- this module is all about functions in haskell

-- lets start with simple things: What exactly does a function in Haskell look like: (The function definition (here the next line) is not mandatory)

doubleMe :: Num a => a -> a
doubleMe x = x+x

-- Okay now with two input parameters:
doubleUs :: Num a => a -> a -> a
doubleUs x y = x*2 + y*2

-- Now what about using functions under certain conditions? Hint: In the function definition you can see "Ord" which indicates with this function only 
-- input parameters supporting operations like < > <=, etc. can be used
-- Note: In Haskell if statements can only be used, when you also provide an else function
doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x = if x > 100
    then x
    else x*2

