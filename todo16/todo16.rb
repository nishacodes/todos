# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and 
# values of the amount of times they occur.
 
def count(array)
  hash = {}
  array.each do |item|
    hash[item] = array.count(item)
  end
  hash
end
 
test = ['cat', 'dog', 'fish', 'fish']
count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })