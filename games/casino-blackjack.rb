# Blackjack!

## Objective
# Practice contional logic including nested conditionals. 
# Use methods to keep our code DRY.

## Instructions
# We are going to build a command line blackjack game.  
# A player gets dealt two cards which have values between 1-11.  
# After they get dealt two cards you should show them the total 
# score of their cards and ask them if they want to hit or stay. 
# A player is allowed to "hit" up to two times.  After each hit you 
# should ask if they want to hit or stay and display the total value of their cards. 
# If they don't want to hit, and they are not at 21 they lose.  
# Your program should tell them they lose and exit.

## Note:  To take input from the person "playing" the game your program 
# will have to use the Ruby method "gets".

## Challenge
# After successfully completing the previous game (there should be a 
# commit with a working version of this game), alter the game so that a
# player can "hit" as many times as they want.


class Blackjack

	def initialize
		@card1 = 0
		@card2 = 0
		@handtotal = 0
		@hitorstay = "h"
		@deal = ""
		# @hits = 0
		puts "Let's play Blackjack. I'll deal you two cards. Ready? (y/n)"
	end

	def deal
		@deal = gets.chomp
		# @hits = 0
		case
  		when @deal == "y"		
				@card1 = rand(1..11)
				@card2 = rand(1..11)
				@handtotal = @card1 + @card2
				puts "You got #{@card1} and #{@card2}, which is #{@handtotal} total."
				blackjack?
			when @deal == "n"
				puts "Okay fine, have a nice day."
			else
				puts "That's not an option. Please select y/n."
				deal
			end
	end

	def hitorstay
		case 
			when @hitorstay == "h"
				# @hits += 1
				extracard = rand(1..11)
				@handtotal += extracard
				puts "Now you got #{extracard}. That's #{@handtotal} total."
				blackjack?
			when @hitorstay == "s"
				blackjack?
			else
				puts "That's not an option. Please select 'h' or 's' to hit or stay."
				@hitorstay = gets.chomp
				hitorstay
		end
	end

	def blackjack?
		case 
			when @handtotal == 21
				puts "Congratulations, you win!!!"  
				playagain
			when @handtotal > 21
				puts "Sorry, you bust!" 
				playagain
			when @handtotal < 21 && @hitorstay=="s"
				puts "Sorry you lose. You need 21 to win."
				@hitorstay = "h"
				playagain
			when @handtotal < 21 && @hitorstay!="s"
				puts "Do you want to HIT or STAY? (h/s)"
				@hitorstay	= gets.chomp
				hitorstay
		end
	end

	def playagain
		puts "Want to play again? (y/n)"
		deal
	end

	# def hitcount
	# 	case 
	# 		when @hits < 2
	# 			deal
	# 		when @hits > 2
	# 			puts "You are only allowed to hit twice."
	# 			@hitorstay = "s"
	# 			hitorstay
	# 		end
	# end

end

Blackjack.new.deal