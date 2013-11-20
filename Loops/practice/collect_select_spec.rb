require "./collect_select"

describe Array, "#my_collect" do

	it "should return a new array that executes the block to each original element" do
		expect([1,2,3].my_collect {|x| x**2}).to eq([1,4,9])
	end

end

describe Array, "#my_select" do

	it "should return a new array that executes the block to each original element" do
		expect([1,2,-5,2.1,3,4,5].my_select {|x| x>2}).to eq([2.1,3,4,5])
	end
	
end