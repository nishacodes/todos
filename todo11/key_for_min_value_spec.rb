require "./key_for_min_value"

describe "#key_for_min_value" do
  it "should return the key of the smallest hash value" do
    key_for_min_value({:first => 500, :second => 2, :third => -1000}).should eq([:third])
  end

  it "should return the key of the smallest hash value when one value is a decimal" do
    key_for_min_value({:first => 49.9, :second => 50, :third => 83}).should eq([:first])
  end

  it "should return the key of the smallest hash value when one value is a decimal" do
    key_for_min_value({:first => 5, :second => 5, :third => 10}).should eq([:first, :second])
  end

  it "should return nil for an empty hash" do
    key_for_min_value({}).should eq(nil)
  end

end