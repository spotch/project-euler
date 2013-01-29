def IsNumberCleanlyDivisibleByNumber(a, b)
	return a % b == 0
end


numberIsDivisibleByAll = false
while numberIsDivisibleByAll == false do
	numberIsDivisibleByAll = true
	(1..20).each { |x|
		if IsNumberCleanlyDivisibleByNumber(index, x) == false
			numberIsDivisibleByAll = false
		end
	}
	index += 1
	puts index
end

puts index
