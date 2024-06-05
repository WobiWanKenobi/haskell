-- okay during when using recursion on lists you maybe noticed there was always an edge case for the empty list. We'd introduce x:xs patter 
-- and then we did do some action that involves a single element and the rest of the list. It turns out this is a very common pattern, so a couple of very 
-- usefull functions were introduced to encapsulate it. These functions are called folds. They are sort of like the map function, only they introduce the list
-- to some single value.

-- take a look at taking the sum of a list, we will implement it our own using (left) fold -> this will basically sum up our list, starting with the first element (because of "left"),
-- all the way to the end:


myList :: [Integer]
myList = [5, 4, 3, 5, 6, 7]

sum' xs = foldl (\acc x -> acc + x) 0 xs
