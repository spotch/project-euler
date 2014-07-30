first = 1
second = 2
top = 4000000

fibonacci :: (Integral a, Ord a) => a -> a -> a -> [a]
fibonacci left right maxVal
	| next >= maxVal = []
	| otherwise = next : fibonacci right next maxVal
	where next = left + right

evens :: (Integral a) => [a] -> [a]
evens nums = [n | n <- nums, mod n 2 == 0]

main = print (sum (evens (first : second : fibonacci first second top)))