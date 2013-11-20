require "./listmaker"

describe Array, "#make_list" do
	it "should return the array as a numbered list if strings if given integers" do
		expect([1,"cat",3].make_list).to eq(["1. 1", "2. cat", "3. 3"])
	end

	it "should return an empty array if given an empty array" do
		expect([1,nil,3].make_list).to eq(["1. 1", "2. 3"])
	end
end