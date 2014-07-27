inputRange = [1..999]
divisibleByThreeOrFive x = mod x 3 == 0 || mod x 5 == 0
sumNumbers range criteria = sum [x | x <- range, criteria x]

main = print (sumNumbers inputRange divisibleByThreeOrFive)