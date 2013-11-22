class Anagram
	attr_reader :word

	def initialize(word)
		@word = word
	end

	def match(wordlist)
		anagrams = wordlist.select do |eachword|
			(/word/).match(eachword)
		end
			
	end

end

detector = Anagram.new("diaper")
anagram = detector.match(["daiper","adadgf","addges"])
anagram = detector.match(["wrod","adadgf","addges"])
anagram = detector.match(["word","adadgf","addges"])
anagram