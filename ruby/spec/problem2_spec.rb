
require 'problem2'

describe Problem2, "#GetSumOfEvenValuedTermsOfFibonacciSequence" do

	it "sums even valued terms from fibonacci sequence" do
		limit = 346
		fibonacciSequence = [1,2,3,4,5,6,7,8]
		sumOfEvens = 2 + 4 + 6 + 8

		fibonacciSequenceGenerator = double("Fibonacci Sequence Generator")
		fibonacciSequenceGenerator.should_receive(:Generate).with(limit).and_return(fibonacciSequence)

		testObject = Problem2.new(fibonacciSequenceGenerator)
		testObject.GetSumOfEvenValuedTermsOfFibonacciSequence(limit).should eq(sumOfEvens)
	end

end
