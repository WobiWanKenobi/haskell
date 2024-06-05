-- Lamda functions are functions that have the purpose of only using them once (e.g a function we need it's output to pass it to a higher-order function).
-- Summary: They are used in higher order functions to define short, inline functions without having to define them seperatly

-- define a list of numbers, here 1 to 5
numbers :: [Int]
numbers = [1, 2, 3, 4, 5]

-- use map with a labmda function to double each number in the previously defined numbers list:

doubledNumbers :: [Int]
doubledNumbers = map (\x -> x * 2) numbers

-- MORE ADVANCED:

-- List of tuples representing students' scores
studentScores =
    [ ("Alice", [85, 90, 92])
    , ("Bob", [75, 82, 78])
    , ("Charlie", [91, 88, 95])
    ]

averageScores :: [(String, Double)]
averageScores = map (\(name, scores) -> (name, sum scores / fromIntegral (length scores))) studentScores