def encode(password)
	pass_as_string = password.to_s # turns from symbol to string
	password_array = pass_as_string.split("_") # turns to an array, split at the underscore
	new_password_array = [] # creates an empty array
	new_password_array[0]=password_array.last # puts last time of password as first 
	new_password_array[3]=password_array.first
	new_password_array[1]=password_array.[1]
	new_password_array.compact!
	joined_password = new_password_array.join(" ")
	joined_password.gsub!("e", "blake")
	joined_password.gsub!(" ", "ashley")
	joined_password

	secret_password = "intblakernblaketsashleytheblakeashleyall"

