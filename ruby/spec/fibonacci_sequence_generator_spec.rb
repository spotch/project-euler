
require 'fibonacci_sequence_generator'

describe FibonacciSequenceGenerator, "#Generate" do
	it "generates a Fibonacci sequence up to the limit" do
		limit = 50

		testObject = FibonacciSequenceGenerator.new
		fibonacciSequence = testObject.Generate(limit)

		lastValue = 0
		currentValue = 1
		sequenceIndex = 0

		while lastValue < limit do
			fibonacciSequence[sequenceIndex].should_not be_nil
			fibonacciSequence[sequenceIndex].should eq(lastValue)
			lastValue, currentValue = currentValue, currentValue + lastValue
			sequenceIndex += 1
		end
		fibonacciSequence[sequenceIndex].should be_nil
	end
end
