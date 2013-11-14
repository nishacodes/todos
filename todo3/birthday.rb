class Birthday
require 'date'
	def getbirthday
		puts "When is your birthday?"
		birthday=gets.chomp
		puts birthday == Date.today ? "Happy birthday to you!" : "Cool, I'll remember that."
	end

end
