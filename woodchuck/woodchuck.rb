class Woodchuck
  attr_accessor :chuck_count

  @@woodchuck_count = 0
  WOODCHUCKS = []
 
  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end
 
  def chuck_wood
    @chuck_count += 1
  end
 
  def self.woodchuck_count
    @@woodchuck_count
  end
 
end
 
# PROGRAM

rand(1..20).times do |i|
	Woodchuck.new
end

total_chuck_count = 0
Woodchuck::WOODCHUCKS.each do |woodchuck|  
  rand(1..20).times do |i|
  	woodchuck.chuck_wood
  end
  total_chuck_count += woodchuck.chuck_count 
end

puts Woodchuck::WOODCHUCKS.inspect
puts "Total wood chucked: #{total_chuck_count}"