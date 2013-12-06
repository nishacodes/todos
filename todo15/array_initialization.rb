# prereqs: initializing, methods, blocks, yield, arrays
 
def array_init(num=5)
  if block_given?
    Array.new(num) { |i| yield i}
  else
    Array.new(num) {|i| (i*100).to_s } 
  end
end