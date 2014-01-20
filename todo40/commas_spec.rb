require './commas'

describe "commas" do

  it "should return a string of the number w/comments" do
    expect(separate_with_comma(1)).to eq("1")
    expect(separate_with_comma(1000)).to eq("1,000")
    expect(separate_with_comma(1000000)).to eq("1,000,000")
  end
end