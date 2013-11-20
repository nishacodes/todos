require "./listmaker"

describe "#make_list" do
	it "should return the array as a numbered list" do
		expect(make_list(["cat","dog","fish"])).to eq(["1. cat", "2. dog", "3. fish"])
	end

	it "should return the array as a numbered list if strings if given integers" do
		expect(make_list([1,2,3])).to eq(["1. 1", "2. 2", "3. 3"])
	end

	it "should return an empty array if given an empty array" do
		expect(make_list([])).to eq([])
	end
end