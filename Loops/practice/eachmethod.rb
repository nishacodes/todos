
def my_each(array)	
	i = 0
	while i < array.length
		if block_given?
			yield array[i]
			i += 1
		end
	end
	array
end

my_first_each([1,2,3]) do |element|
	puts element
end