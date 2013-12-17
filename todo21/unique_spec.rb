require "./unique"

describe "unique" do

  it "should return remove the duplicates" do
    expect(['b','b','a','a','c'].uniq).to eq(['b','a','c'])
  end  
end