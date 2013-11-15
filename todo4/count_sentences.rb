# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on

class String
  def count_sentences
    self.count "/.?!/"
  end
end

puts "Good morning. Today is Friday! How's it going?".count_sentences # => 3
puts "".count_sentences # => 0