require './fakehashwrapper'

describe "fakehashwrapper" do

  it "should get values" do
    hash = FakeHashWrapper.new({:name => "Nisha", :city=>"New York"})
    expect(hash.[](:name)).to eq("Nisha")
  end

  it "should set key-value pairs" do
    hash = FakeHashWrapper.new({:name => "Nisha", :city=>"New York"})
    hash.add_new_pair("age",28)
    expect(hash.[]("age")).to eq(28)
  end

end
