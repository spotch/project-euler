
require 'multiples_in_range.rb'

class Problem1

	def initialize(multiplesInRange = MultiplesInRange.new)
		@multiplesInRange = multiplesInRange
	end

	def DetermineSumOfMultiplesInRange(firstBase, secondBase, range)
		firstArray = @multiplesInRange.GetMultiplesInRange(firstBase, range)
		secondArray = @multiplesInRange.GetMultiplesInRange(secondBase, range)

		sumArray = firstArray | secondArray

		sumArray.reduce(:+)
	end

end

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

if __FILE__ == $0 then

	puts Problem1.new.DetermineSumOfMultiplesInRange(3, 5, 0..999)

end
