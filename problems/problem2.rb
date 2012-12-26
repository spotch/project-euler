
sum = 0

lastSequenceIndex = 1
currentSequenceIndex = lastSequenceIndex

while currentSequenceIndex <= 4000000 do
	if (currentSequenceIndex % 2 == 0)
		sum += currentSequenceIndex
	end

	lastSequenceIndex, currentSequenceIndex = currentSequenceIndex, currentSequenceIndex + lastSequenceIndex
end

puts sum



