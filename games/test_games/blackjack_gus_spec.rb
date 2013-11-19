require "./blackjack_gus"

card
blackjack

describe "#card" do
	it "should generate a number greater than 0" do
		expect(card > 0).to be_true
	end
	
	it "should generate a number less than 12" do
		expect(card < 12).to be_true
	end

end


describe "#blackjack" do
	
	# having a local variable issue
	it "should deal two cards between 1 and 11" do
		expect(card1 < 12 && card1 > 0 ).to be_true
		expect(card2 < 12 && card2 > 0 ).to be_true
	end

end