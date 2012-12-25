
class MultiplesInRange
	def GetMultiplesInRange(multipleBase, range)
		multiples = Array.new
		range.each { |element|
			if element % multipleBase == 0 then
				multiples.push(element)
			end
		}
		return multiples
	end
end
