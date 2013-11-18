require "./dog_years"

describe "#age" do
	
	it "should return 5 for age_in_years(5)" do
		expect(age_in_years(5)).to eq(5)
	end

end

describe "#age_in_days" do
	
	it "should return 5 for age_in_years(5)" do
		expect(age_in_days(5)).to eq(1825)
	end

end

describe "#age_in_dog_years" do
	
	it "should return 5 for age_in_years(5)" do
		expect(age_in_dog_years(5)).to eq(35)
	end

end



