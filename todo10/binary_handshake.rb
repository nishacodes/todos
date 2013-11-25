class SecretHandshake
	attr_accessor :number, :commands

	def initialize(number)
		@number = number.to_s.split(//)
		@commands = []
		interpret
	end

	def interpret
		length = @number.length
		@number.each_with_index do |number, index|
			if number.to_i > 0
				case length - index
					when 1
						@commands.unshift("wink")
					when 2
						@commands.unshift("double blink")
					when 3
						@commands.unshift("close your eyes")
					when 4
						@commands.unshift("jump")
					end
			end
		end
		# this needs to be outside of the each loop otherwise it will reverse as the first step
		if length == 5 && @number[0]=="1"
			@commands.reverse!
		end
	end

end

# # Binary Secret Handshake

# > There are 10 types of people in the world: Those who understand binary, and those who don't.

# You and your fellow flatirons are of those in the "know" when it comes to binary decide to come up with a secret "handshake".

# ```
# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump


# 10000 = Reverse the order of the operations in the secret handshake.
# ```

# Write a program that will convert a binary number, represented as a string (i.e. "101010"), and convert it to the appropriate sequence of events for a secret handshake.


# ```
# handshake = SecretHandshake.new "1001"
# handshake.commands # => ["wink","jump"]

# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# ```

# The program should consider strings specifying an invalid binary as the value 0.





