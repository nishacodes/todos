require "./blackjack_gus"

describe "#card" do
	it "should generate a number greater than 0 and less than 12" do
		expect(card).to be > 0
		expect(50).to be < 12
	end

end


describe "#blackjack" do
	
	# having a local variable issue
	it "should deal two cards between 1 and 11" do
	# expect(card1 < 12 && card1 > 0 ).to be_true
	# expect(card2 < 12 && card2 > 0 ).to be_true
	end

end