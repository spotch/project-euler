
def FindPrimeFactors(number)

	factors = Array.new

	index = 1

	while index * index <= number do
		if number % index == 0 then
			factors.push(index)
		end
		index += 1
	end

	return factors
end


bigNumber = 600851475143

factorsOfBigNumber = FindPrimeFactors(bigNumber)

primeFactorsOfBigNumber = Array.new

factorsOfBigNumber.each { |number|
	if FindPrimeFactors(number).size == 1
		primeFactorsOfBigNumber.push(number)
	end
}

puts primeFactorsOfBigNumber

