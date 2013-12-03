require 'debugger'
# people = [
#       ["bob", 15, "johnson"], 
#       ["bob", 15, "jackson"], 
#       ["bob", 56, "male"], 
#       ["dave", 45, "male"], 
#       ["alice", 56, "female"], 
#       ["adam", 15, "male"]
#     ]



people = 
[["1", "10", "2"], 
["1", "11"], 
["1", "3"], 
]



new_people = []
people.each do |array|
	new_people << array[0]
		if array[1].nil?
			new_people << ""
		else 
			new_people << array[1]
		end
		if array[2].nil?
			new_people << ""
		else 
			new_people << array[2]
		end
	end


puts new_people

# sorted = people.sort do |a,b|

# 	if (a[1] <=> b[1]) == 0
# 		if (a[0] <=> b[0]) == 0
# 			a[2] <=> b[2]
# 		else
# 			a[0] <=> b[0]
# 		end
# 	else
# 		a[1] <=> b[1]
# 	end
# end

# puts sorted