
sum = 0
(0..999).step(3) {|x| sum += x }
(0..999).step(5) {|x|
	if (x % 3 != 0)
		sum += x
	end
}

puts sum
