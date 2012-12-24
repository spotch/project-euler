require 'problem1.rb'

describe Problem1 do
	it "sums numbers less than x that are also divisible by 3 and 5 less" do
		input = 20
		sumOfNumbers = Problem1.new.DetermineSumOfMultiplesOfThreeAndFive(input)
		sumOfNumbers.should eq(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18)
	end
end
