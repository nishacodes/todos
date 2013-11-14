class Birthday
require 'date'


def getbirthday
puts "When is your birthday? (MM-DD)"
birthday=gets.chomp
puts birthday == Date.today.to_s[5,5] ? "Happy birthday to you!" : "Cool, I'll remember that."
end

end

Birthday.new.getbirthday