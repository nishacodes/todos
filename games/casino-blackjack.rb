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
		@dcard1 = 0
		@dcard2 = 0
		@dhandtotal = 0
		@hitorstay = "h"
		@deal = ""
		@hits = 0
		@instructions = ""
	end


	def startgame
		puts "Welcome to my Blackjack table. My name is Nisha, I'll be your dealer."
		puts "Do you know how to play? (y/n)"
		@deal = gets.chomp
		if @deal == "y" 
			puts "Okay, great. I'll deal you two cards."
			deal
		else 
			intro

		end
	end

	def intro
		puts "Okay, here's how it works."
		puts "* The object of the game is to get 21 without going over (i.e. busting)."
		puts "* If you bust, you automatically lose."
		puts "* You play against me. Whoever is closer to 21 but not over, wins."
		puts "* You'll get to see one of my cards while you play. If you want another card, you 'hit,' otherwise you 'stay'."
		puts "* When it's my turn, I have to hit as long as my hand is less than 17."
		puts "Ready to play?"
		@deal = gets.chomp
		deal 
	end
	
	def deal
		sleep(2)
		@hits = 0
		case
  		when @deal == "y"		
				@card1 = rand(1..11)
				@card2 = rand(1..11)
				@handtotal = @card1 + @card2
				puts "You got #{@card1} and #{@card2}, which is #{@handtotal} total."
				sleep(1)
				dealer
				blackjack?
			when @deal == "n"
				puts "Darn, come back another day."
			else
				puts "That's not an option. Please select y/n."
				@deal = gets.chomp
				deal
			end
	end

	def dealer
		@dcard1 = rand(1..11)
		@dcard2 = rand(1..11)
		@dhandtotal = @dcard1 + @dcard2
		puts "The dealer is showing a #{@dcard1}."
		sleep(1)
	end

	def dealerhit # this loop needs fixing
		case 
			when @dhandtotal == 21 
				declarewinner
			when @dhandtotal < 17
				puts "I'll hit."
				extracard = rand(1..11)
				@dhandtotal += extracard
				sleep(2)
				puts "I got #{extracard}, so I have #{@dhandtotal}."
				sleep(2)
				if @dhandtotal > 21
					declarewinner
				else
					dealerhit
				end
			when @dhandtotal >= 17
				declarewinner
			end
	end

	def hitorstay
		case 
			when @hitorstay == "h"
				@hits += 1
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
			when @handtotal == 21 && @hits==0
				puts "Congratulations, you got a Blackjack! You win!"  
				playagain
			when @handtotal == 21 && @hits!=0
				puts "Okay, you have #{@handtotal}. Now it's my turn."
				sleep(1)
				puts "I've got #{@dcard1} and #{@dcard2}, which is #{@dhandtotal} total."
				dealerhit
			when @handtotal > 21
				puts "Sorry, you bust! Now it's my turn." 
				sleep(1)
				puts "I've got #{@dcard1} and #{@dcard2}, which is #{@dhandtotal} total."
				dealerhit
			when @handtotal <= 21 && @hitorstay=="s"
				puts "Okay, you have #{@handtotal}. Now it's my turn."
				sleep(1)
				puts "I've got #{@dcard1} and #{@dcard2}, which is #{@dhandtotal} total."
				dealerhit
			when @handtotal < 21 && @hitorstay!="s"
				puts "Do you want to HIT or STAY? (h/s)"
				@hitorstay	= gets.chomp
				hitorstay
		end
	end

	def playagain
		puts "Want to play again? (y/n)"
		@deal = gets.chomp
		puts "* NEW GAME *"
		deal
	end

	def declarewinner
		case 
			when @dhandtotal > 21 && @handtotal <= 21
				puts "I bust. You win!"
			when @dhandtotal > 21 && @handtotal > 21
				puts "We both busted. It's a push."
			when @dhandtotal < 21 && @handtotal > 21
				puts "You bust. I win."
			when @dhandtotal == 21 && @handtotal != 21
				puts "I got 21! Sorry, you lose."
			when @dhandtotal < 21 
				puts "I have #{@dhandtotal} and you have #{@handtotal}."
				puts @dhandtotal > @handtotal ? "I win!" : "You win!"
		end                 
		reset
		playagain
	end

	def reset
		@hitorstay = "h"
		@hits = 0
		@handtotal = 0
		@dhandtotal = 0
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

Blackjack.new.startgame