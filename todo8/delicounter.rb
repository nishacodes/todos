class Deli
	attr_accessor :line, :name

	def initialize
		@line = ["1. Ashley", "2. Steve", "3. Blake"] 
		@name = ""
	end

	def take_a_number(name)
		num = (@line.length + 1)
		@line << "#{num}. #{name}"
		@line
	end

	def now_serving
		@name = @line[0].split(" ").last
		@name
		shift_line
	end

	def shift_line
		@line.delete_at(0)
		@line.each_with_index do |person, index|
			person.gsub!(/\d+/,"#{index+1}")
		end
		@line
	end

end

nisha = Deli.new
nisha.take_a_number("Nisha")
nisha.now_serving

