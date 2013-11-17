#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.


class Eightball
	def initialize
		@messages = [
			"It is certain",
			"It is decidedly so",
			"Without a doubt",
			"Yes definitely",
			"You may rely on it",
			"As I see it yes",
			"Most likely",
			"Signs point to yes",
			"Ask again later",
			"Better not tell you now",
			"Concentrate and ask again",
			"Don't count on it",
			"My reply is no",
			"My sources say no",
			"Outlook not so good",
			"Very doubtful"
		]
		@shake = ""
		puts "Do you want to shake my magic eightball? (y/n)"
	end

	def shake
		@shake = gets.chomp
		case
  		when @shake == "y"
  			puts "What is your question?"
  			question = gets.chomp
  			puts "The magic eightball says, '#{@messages[rand(0..16)]}'"
  			puts "Shake again? (y/n)"
  			shake
  		when @shake == "n"
  			puts "Okay fine, have a nice day."
  		else
  			puts "That's not an option. Please select y/n."
  			shake
		end
	end

end

Eightball.new.shake