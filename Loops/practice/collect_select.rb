# CHALLENGE:
# Implement these methods as instance methods on the array class.
# Implement your own versions of collect and select

class Array 
	def my_collect
		i = 0
		new_array = []
		while i < self.length
			if block_given?
				new_item = yield self[i]
				new_array << new_item
				i += 1
			end
		end
		new_array
	end
	 
	def my_select
		i = 0
		new_array = []
		while i < self.length
			if block_given?
				boolean = yield self[i]
				new_array << self[i] if boolean == true
				i += 1
			end
		end
		new_array
	end
	
end

# EXAMPLES
[1,2,3].my_collect do |element|
	element * 2
end

[1,2,3,4].my_select do |element|
	element > 2
end