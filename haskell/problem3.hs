factors :: (Integral a, Ord a) => a -> [a]
factors number = factors' number 2

factors' :: (Integral a, Ord a) => a -> a -> [a]
factors' number current
	| squared > number = []
	| squared == number = [current]
	| mod number current == 0 = current : next ++ [otherFactor]
	| otherwise = next
	where squared     = current * current
	      otherFactor = div number current
	      next        = factors' number (current + 1)

primes :: (Integral a, Ord a) => [a] -> [a]
primes numbers = [x | x <- numbers, length (factors x) == 0]


main = print(last (primes (factors 600851475143)))