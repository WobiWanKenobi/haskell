-- One of the most usefull data structures in Haskell and programming in general are lists. Here we will have a look at the basics of lists and list
-- comprehensions in Haskell
-- run using :load lists.hs, then execute variables

-- simple list (when using this in a interpreter like ghci, we also need the "let" keyword in front do define it):
lostNumbers :: [Integer]
lostNumbers = [4, 8, 15, 16, 23, 42]

-- with the ++ operator we can merge 2 lists together -> The output will look like this: [4,8,15,16,23,42,4,8,15,16,23,42]:
lostNumbers2 = lostNumbers ++ lostNumbers

-- using the ++ operator can take a long time, so when we only want to add to the beginning of list use this: Output: [1,4,8,15,16,23,42]

lostNumbersBegin = 1:lostNumbers

-- calculate the sum of lostNumbers
sumLostNumbers = sum lostNumbers

-- due to the fact that in Haskell a String is nothing else then a list of characters (char)

s = 'A':" small cat"

-- own lenght function for lists
length' xs = sum[1 | _ <- xs]

-- You want to produce pairs/tuples out of a list -> I got you: Just use the zip operator on two lists. NOTE: This can be used on lists with different datatypes each, because tuples in Haskell
-- can contain more then one datatype -> when using triples, etc each individual part can be of a different type.

listToPairs = zip lostNumbers lostNumbers

--ADVANCED EXAMPLES

--list of numbers from a lowerBound to a upperBound which divided by a divider and module lists all numbers suitable to this output:

remainder :: Integral a => a -> a -> a -> a -> Either String [a]
remainder lowerBound upperBound divider modulo
    | divider /= 0 = Right [x | x <- [lowerBound..upperBound], x `mod` divider == modulo]
    | otherwise = Left "You can not divide by ZERO! ;)"

-- get the first x elements of a list
firstElemLostNumbers :: Int -> Either String [Integer]
firstElemLostNumbers x
    | x>0 && x < length lostNumbers = Right(take x lostNumbers)
    | otherwise = Left "List does not contain so many elements"

-- take the product of the first x elements of a list (list must contain numbers)
productFirstXElements :: Num a => Int -> [a] -> Either [Char] a
productFirstXElements x numbers
    | x >= 0 && x < length numbers = Right (product(take x numbers)) 
    | otherwise = Left $ "List does not contain " ++ show x ++ " elements"
-- Either allows us to return different datatyes in a return statment. Left and Right are the constructors of Either, they both hold a value of a specific type.

getElement :: Int -> String -> Either String String
getElement index sentence
    | index >= 0 && index < length sentence = Right $ (sentence !! index : "") ++ " is the " ++ show (index + 1) ++ ". character in a sentence of " ++ show (length sentence) ++ " characters"
    | otherwise = Left "Index not in Range"

