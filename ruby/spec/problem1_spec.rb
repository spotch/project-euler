require 'problem1.rb'

describe Problem1, "#DetermineSumOfMultiplesInRange" do

	before(:each) do
		@firstBase = 123
		@secondBase = 346
		@range = (757..6585)

		@multiplesOfObject = ("double")

		@testObject = Problem1.new(@multiplesOfObject)
	end

	it "sums the numbers from the two unique arrays from the MultiplesInRange object" do
		uniqueArray1 = [0,1,2]
		uniqueArray2 = [3,4,5]

		sumOfUniqueArrays = (uniqueArray1 + uniqueArray2).reduce(:+)

		@multiplesOfObject.should_receive(:GetMultiplesInRange).with(@firstBase, @range).and_return(uniqueArray1)
		@multiplesOfObject.should_receive(:GetMultiplesInRange).with(@secondBase, @range).and_return(uniqueArray2)

		@testObject.DetermineSumOfMultiplesInRange(@firstBase, @secondBase, @range).should eq(sumOfUniqueArrays)
	end

	it "sums the unique numbers from the two arrays with duplicates from the MultiplesInRange object" do
		arrayWithDupes1 = [0,1,2]
		arrayWithDupes2 = [0,1,3]

		sumOfArraysWithDupes = (arrayWithDupes1 | arrayWithDupes2).reduce(:+)

		@multiplesOfObject.should_receive(:GetMultiplesInRange).with(@firstBase, @range).and_return(arrayWithDupes1)
		@multiplesOfObject.should_receive(:GetMultiplesInRange).with(@secondBase, @range).and_return(arrayWithDupes2)

		@testObject.DetermineSumOfMultiplesInRange(@firstBase, @secondBase, @range).should eq(sumOfArraysWithDupes)
	end
end
