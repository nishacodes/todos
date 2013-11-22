# Save this file as anagram_spec.rb
# run it with rspec anagram_spec.rb

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

require './anagrams'

describe Anagram, "#match" do 

detector = Anagram.new("bubbles")

	it "should return an array of matching anagrams given an array" do
		expect(detector.match(["blubbes","bubbls","bubbless","sbubleb"])).to eq(["blubbes","sbubleb"])
	end

	it "should return an array of matching anagrams given a string" do
		expect(detector.match("blubbes bubbls bubbless sbubleb")).to eq(["blubbes","sbubleb"])
	end

end

