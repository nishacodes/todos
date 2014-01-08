require './palindrome.rb'

describe "palindrome" do
  it "should return the longest palindrome in a string" do
    expect(longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd")).to eq("dhfdkjfffhhfffjkdfhd")
  end
end