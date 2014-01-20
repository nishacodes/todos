# Separate numbers with a comma each three digits.
 
def separate_with_comma(n)
  n.to_s.reverse.gsub(/(.{3})/, '\1,').reverse
end
 
separate_with_comma(1) #=> "1" 
separate_with_comma(1000) #=> "1,000" 
separate_with_comma(10000) #=> "10,000"