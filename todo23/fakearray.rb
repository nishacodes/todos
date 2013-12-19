class FakeArray
  attr_accessor :elements
 
  def initialize(array)
    @elements = array
  end

  def each
    @elements.each do |element|
      yield element if block_given?
    end
    
  end
 
  def first
    @elements[0]
  end
 
  def [](index)
    elements[index]
  end
 
end