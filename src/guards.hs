-- this is all about guards in Haskell, a very clean and readable way for something like if/else statments you probably know from programming languages like Python or Java.
-- Guards are evaluated in order
import Distribution.Verbosity (normal)


-- Function with guards -> basically if else statements.
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You are underweight."
    | bmi <= 25.0 = "You are 'normal'."
    | bmi <= 30.0 = "You are overweight."
    | otherwise = "This number is not on the scale."

-- Same as the above function, but now we use the "where" statement, which allows as to bind specefic values to the guard statements -> improved readability"
bmiTellVariable :: (RealFloat a) => a -> a -> String
bmiTellVariable weight height
    | bmi <= skinny = "You're underweight.!"
    | bmi <= normal = "You are 'normal'."
    | bmi <= fat    = "You are overweight."
    | otherwise     = "This number is not on the scale."
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

main :: IO()
main = do
    putStrLn "Enter your BMI: "
    input <- getLine
    let bmi = read input :: Float
    putStrLn (bmiTell bmi)