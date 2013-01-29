
require 'multiples_in_range'

describe MultiplesInRange, "#GetMultiplesInRange" do

	before(:each) do
		@multipleBase = 4
		@range = (2..33)

		@testObject = MultiplesInRange.new
	end

	it "returns numbers that are all multiples of base" do
		multiples = @testObject.GetMultiplesInRange(@multipleBase, @range)
		multiples.each { |multiple|
			(multiple % @multipleBase).should eq(0)
		}
	end

	it "returns numbers within range" do
		multiples = @testObject.GetMultiplesInRange(@multipleBase, @range)
		multiples.each { |multiple|
			@range.include?(multiple).should eq(true)
		}
	end

	it "returns unique numbers" do
		multiples = @testObject.GetMultiplesInRange(@multipleBase, @range)
		multiples.size.should eq(multiples.uniq.size)
	end

	it "returns the maximum number of multiples in the range" do
		multipleBase = 5
		range = (1..50)
		multiples = @testObject.GetMultiplesInRange(multipleBase, range)
		multiples.size.should eq(10)
	end

end
