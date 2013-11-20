require "./listmaker"

describe "#make_list" do
	it "should return the array as a numbered list if strings if given integers" do
		expect(make_list([1,"cat",3])).to eq(["1. 1", "2. cat", "3. 3"])
	end

	it "should return an empty array if given an empty array" do
		expect(make_list([1,nil,3])).to eq(["1. 1", "2. 3"])
	end
end