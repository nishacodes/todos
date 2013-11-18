require "./fizzbuzz_refactor.rb"

describe "#fizzbuzz" do 
	
	it "should return 'fizzbuzz' when number % 15 = 0" do
	expect(fizzbuzz(75)).to eq("fizzbuzz")
	end

	it "should return 'buzz' when number % 5 =0" do
	expect(fizzbuzz(10)).to eq("buzz")
	end

	it "should return 'buzz' when number % 3 =0" do
	expect(fizzbuzz(10)).to eq("buzz")
	end

	it "should return 'buzz' when number % 3 > 0" do
	expect(fizzbuzz(7)).to eq(7)
	end

end