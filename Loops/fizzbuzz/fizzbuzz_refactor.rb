def fizzbuzz(number)
	if number < 1 || number > 100
			puts "Not a valid option. Please choose a number between 1 and 100."
	else
		case 
			when number%15==0 
				puts "fizzbuzz"
			when number%3==0
				puts "fizz"
			when number%5==0 
				puts "buzz"
			
			else
				puts number
		end
	end
end

fizzbuzz(11)