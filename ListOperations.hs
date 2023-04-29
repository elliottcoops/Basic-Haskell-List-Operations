-- Select the nth element from an integer list
select :: Integer -> [Integer] -> Integer

select element [] = 0 -- if none, return 0

select element (x:xs)
    | element == 1 = x -- if the counter reaches 1, return the element
    | otherwise = select (element-1) xs -- Recursivly call the function and take one of the increment each time

-- Remove the first element from a list 
remove :: [Integer] -> [Integer]

remove [] = [] -- if the list is empty, return empty list

remove (x:xs) = xs -- otherwise call the function and return the tail

-- Select the first n elements of an integer list
select_n :: Integer -> [Integer] -> [Integer]

select_n n [] = [] -- if the list is empty, return empty list

select_n n (x:xs)
    | n == 0 = [] -- if the count is set to 0, return empty list
    | otherwise = [x] ++ select_n (n-1) xs -- append a singleton list recursibly until reaching base case

-- Reverse a list
reverse_list :: [Integer] -> [Integer]

reverse_list [] = [] -- if the list is empty, return empty list

reverse_list (x:xs) = reverse_list xs ++ [x] -- recursivly call the function and then add to the list

-- Create a test list to use on above functions
test_list = [x*5 | x <- [1..10]] -- Create a list of the first 10 multiples of 5