require './fakearray'

describe "each" do
  it "should act like the each method" do
    fakearray = FakeArray.new([1,2,3])
    container = []
    fakearray.each do |element|
      container << element + 1
    end
    expect(container).to eq([2,3,4])
  end
end

describe "first" do
  it "should return the first element in the array" do
    fakearray = FakeArray.new([1,2,3])
    expect(fakearray.first).to eq(1)
  end
end

describe "[](index)" do
  it "should return whatever index is called" do
    fakearray = FakeArray.new([1,2,3])
    expect(fakearray[2]).to eq(3)
  end
end