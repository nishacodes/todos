# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
  min_value = hash.values.min
  keys = hash.collect do |key, num|
  	key if num == min_value
  end
  keys.compact!
end