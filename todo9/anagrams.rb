class Anagram
	attr_accessor :word

	def initialize(word)
		@word = word
	end
	
	def match(wordlist)
    if wordlist.class == String
      wordlist = wordlist.split(" ") 
    end
    matches = wordlist.map do |item|
      item if item.split(//).sort == word.split(//).sort
    end
    matches.compact!
    matches
	end

end


