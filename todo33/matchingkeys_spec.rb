require './matchingkeys'

describe "#matchingkeys" do
  it "should return the key(s) given the value(s)" do
    expect({a: 1, b: 2, c: 3}.keys_of(1)).to eq([:a])
    expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1)).to eq([:a, :d])
    expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1,2)).to eq([:a, :b, :d])
  end
end
