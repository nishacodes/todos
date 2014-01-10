# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string
 
def longest_palindrome(string)
  array1 = []
  array2 = []
  palindromes = []
  reverse_str = string.reverse
  length = string.length
  # collect all sequential combinations in 2 arrays
  length.times do |i|
    n = 0
    while n <= i
      array1 << string[n..i]
      array2 << reverse_str[n..i]
      
      n+=1
    end
  end
  # compare the arrays and get the palindromes
  palindromes = array1.select do |element|
    array2.include?(element)
  end
  # get the longest palindrome
  palindromes.sort_by(&:length).last  
end
 



