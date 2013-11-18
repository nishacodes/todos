# Write a method `format` for the class integer that converts the number to a
# string and adds commas at the appropriate places

#To test your solution run `rspec format_number_spec.rb` in your terminal

class Integer

  def format
    number = self.to_s
    # \d is for any digit; ?= checks the previous to see if matches the following
    # \d{3} is for 3 digits; + is for all; $ is for last match
    commas = /(\d)(?=(\d{3})+$)/
    number = number.gsub(commas, '\1,') # replace the first matched group with the digits and ","
  end

end

puts 100.format
puts 1000.format
puts 1000000.format
