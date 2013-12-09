require "./todo16"

describe "#count" do
  it "should return a hash that counts each element" do
    test = ["hey", "hi", "hey", 1, 1, "bye"]
    count(test).should eq({"hey" => 2, "hi" => 1, 1 => 2, "bye" => 1})
  end
end