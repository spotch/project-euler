
def IsPalindrome(number)
	numberHalfLength = number.to_s.length / 2

	firstHalf = number.to_s[0, numberHalfLength]
	secondHalf = number.to_s[-numberHalfLength..-1]

	return firstHalf == secondHalf.reverse
end


if __FILE__ == $0
	largestPalindrome = 0
	largestA = 0
	largestB = 0

	(100..999).step(1) do |a|
		(100..999).step(1) do |b|
			if IsPalindrome(a * b) then
				if largestPalindrome < a * b then
					largestPalindrome = a * b
					largestA = a
					largestB = b
				end
			end
		end
	end
	puts largestA, largestB, largestPalindrome
end
