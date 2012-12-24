
class Problem1

	def init

	end

	def DetermineSumOfMultiplesOfThreeAndFive(lessThanThisNumber)
		sum = 0
		(0..lessThanThisNumber-1).step(3) {|x| sum += x }
		(0..lessThanThisNumber-1).step(5) {|x|
		   if (x % 3 != 0)
		      sum += x
		   end
		}
		return sum
	end

end

if __FILE__ == $0 then

	puts Problem1.new.DetermineSumOfMultiplesOfThreeAndFive(1000)

end
