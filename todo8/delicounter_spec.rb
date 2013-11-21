require "./delicounter"

describe Deli, "#take_a_number"  do
	
	it "should add a person to the end the @line array with a number" do
		expect(Deli.new.take_a_number("Nisha")).to include("4. Nisha")
	end

end

describe Deli, "#now_serving"  do
	
	it "should return the first person's name in @line" do
		expect(Deli.new.now_serving).to eq("Ashley")
	end

end