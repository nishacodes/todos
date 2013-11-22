class Anagram
	attr_accessor :word, :regexword, :anagrams

	def initialize(word)
		@word = word
		@regexword = ""
	end

	def wordregex
		wordarray = word.split(//)
		@regexword = "/^"
		wordarray.each do |letter|
			@regexword << "(?!.*#{letter}.*#{letter})"
		end
		@regexword += "[#{@word}]*$/"
	end

	# need to store matches in anagrams...
	def matching(wordlist)
		matches = wordlist.select do |eachword|
			@regexword.match(eachword)
		end
		@anagrams = matches[0]
	end

end

detector = Anagram.new("diaper")
detector.wordregex
detector.matching(["daiper","adadgf","addges"])


puts detector.regexword
puts detector.anagrams