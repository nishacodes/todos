class Anagram
	attr_accessor :word, :regexword, :anagrams

	def initialize(word)
		@word = word
		@regexword = ""
    @anagrams = []
	end

	def wordregex
		wordarray = word.split(//)
		@regexword = "^"
		wordarray.each do |letter|
			@regexword << "(?!.*#{letter}.*#{letter})"
		end
		@regexword += "[#{@word}]*$/"
    @regexword = Regexp.new(@regexword)
	end

	# need to store matches in anagrams...
	def matching(wordlist)
		matches = wordlist.select do |eachword|
		  @regexword.match(eachword) 
		end
		@anagrams << matches[0]
    puts @anagrams
    
	end

end

detector = Anagram.new("diaper")
detector.wordregex
detector.matching(["daiper","adadgf","addges"])


puts @regexword
puts @anagrams