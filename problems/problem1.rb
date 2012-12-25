
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

if __FILE__ == $0 then

	puts Problem1.new.DetermineSumOfMultiplesInRange(3, 5, 0..999)

end
