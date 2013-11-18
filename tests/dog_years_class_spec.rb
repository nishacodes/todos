require "./dog_years_class"

mydog = Dog.new

	describe "#initialize" do
		
		it "should return true if age is less than 15" do
			expect(Dog.new.age<15).to be_true
		end

		it "should return false if age is greater than 15" do
			expect(Dog.new.age>15).to be_false
		end

	end

	describe "#age_in_years" do

		it "should be the same as age" do
			expect(mydog.age_in_years==mydog.age).to be_true
		end

	end

	describe "#age_in_days" do
		
		it "should return 365 times the age" do
			expect(mydog.age_in_days).to eq(365*mydog.age)
		end

	end

	describe "#age_in_dog_years" do
		
		it "should return 7 times the age" do
			expect(mydog.age_in_dog_years).to eq(7*mydog.age)
		end

	end

