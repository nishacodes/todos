class FakeHashWrapper
  attr_accessor :hash
  
  def initialize(hash)
    @hash = hash
  end

  def [](key) 
    hash[key]
  end 

  def add_new_pair(key, value)  
    hash[key]=value
  end

  def find_values_by_key(letter)
  end

 
end

