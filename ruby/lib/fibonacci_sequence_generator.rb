
class FibonacciSequenceGenerator

	def Generate(limit)

		fibonacciSequence = Array.new

		lastValue = 0
		currentValue = 1

		begin
			fibonacciSequence.push(lastValue)
			lastValue, currentValue = currentValue, currentValue + lastValue
		end while lastValue < limit
		
		return fibonacciSequence

	end
end
