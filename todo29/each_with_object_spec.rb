require './each_with_object'

describe "even_sum" do
  it "should reverse strings that have lengths indivisible by 2" do
    expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(["drib", "hsif"])
  end
end