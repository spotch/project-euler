import Data.List (sort)

isPalindrome :: (Ord a) => [a] -> Bool
isPalindrome a = a == reverse a

validPalindromes = [x * y | x <- [0..999], y <- [0..999], isPalindrome (show (x * y))]

main = print(last (sort validPalindromes))