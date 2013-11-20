require 'debugger'

array = [{:name => "blake", :color => "blue"},{:name => "chris", :color => "green"}]
array.each do |hash|
	hash.each do |category, item|
		debugger
		puts "hi"
	end
end
