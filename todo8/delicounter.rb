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
	end

end

nisha = Deli.new
nisha.take_a_number("Nisha")
nisha.now_serving

