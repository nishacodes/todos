101.times do |i|
next if i==0
case 
	when i%3==0 && i%5==0
		puts "fizzbuzz"

	when i%3==0
		puts "fizz"

	when i%5==0 
		puts "buzz"
	else
		puts i
	end
end
