require "./yahtzee"

	describe "#roll_dice" do
		
		it "should have 5 numbers in the array" do
			expect(roll_dice.compact).to have(5).items  
		end

		# it "should not have a number greater than 6" do
		# 	expect(roll_dice).not_to include(7)
		# end
		
		# it "should not have a number less than 1" do
		# 	expect(roll_dice).not_to include(0)
		# end

		it "should have only numbers between 1 and 6" do
			expect(roll_dice[1]<7).to be_true
			expect(roll_dice[3]>6).to be_false
		end

		it "should have only numbers between 1 and 6" do
			expect(roll_dice.join).to match_regex(/[1-6]{5}/)
		end

	end

	describe "#win?" do

		it "should return true if all the numbers are the same" do
			expect(win?([5,5,5,5,5])).to be_true
		end

		it "should return false if all the numbers are not the same" do
			expect(win?([5,5,5,5,1])).to be_false
		end

	end
