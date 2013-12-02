#Write a method to shorten a string based on the allowed substitutes



tweets = [
"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
"OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
"GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!",
"Four be you and"
]

class ShortenTweet
	attr_accessor :tweet

	SUBSTITUTIONS = {
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"for" => "4",
		"four" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}
	def initialize(tweet)
		@tweet = tweet
		shorten
	end

	def too_long
		@tweet.length > 140
	end

	def shorten
		if too_long
			to_shorten = @tweet.split(/(?=\b)/).collect do |word|
				SUBSTITUTIONS[word] || word
			end
			@tweet = to_shorten.join
			puts @tweet
			truncatetweet
		else
			puts @tweet
		end
	end

	def truncatetweet
		@tweet.truncate(140) if too_long
		puts @tweet
	end

end

mytweet = ShortenTweet.new("Four be you and Four be Four be you and Four be Four be you and Four be Four be you and Four be Four be you and Four be Four be you and Four be Four be you and Four be Four be you and Four be you and Four be you and Four be you and Four be you and Four be you and")
