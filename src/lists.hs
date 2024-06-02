-- One of the most usefull data structures in Haskell and programming in general are lists. Here we will have a look at the basics of lists and list
-- comprehensions in Haskell

-- simple list (when using this in a interpreter like ghci, we also need the "let" keyword in front do define it):
lostNumbers = [4, 8, 15, 16, 23, 42]

-- with the ++ operator we can merge 2 lists together -> The output will look like this: [4,8,15,16,23,42,4,8,15,16,23,42]:
lostNumbers2 = lostNumbers ++ lostNumbers

-- using the ++ operator can take a long time, so when we only want to add to the beginning of list use this: Output: [1,4,8,15,16,23,42]

lostNumbersBegin = 1:lostNumbers

-- due to the fact that in Haskell a String is nothing else then a list of characters (char)