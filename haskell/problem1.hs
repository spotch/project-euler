inputRange = [1..999]
modNumbers = [3, 5]

isNumberDivisibleByNumbers :: (Integral a) => a -> [a] -> Bool
isNumberDivisibleByNumbers _ [] = False
isNumberDivisibleByNumbers x (number:numbers) = mod x number == 0 || isNumberDivisibleByNumbers x numbers

main = print (sum [x | x <- inputRange, isNumberDivisibleByNumbers x modNumbers])