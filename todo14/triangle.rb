class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    # @sides << side1
    # @sides << side2
    # @sides << side3
    @kind
  end

  def kind
    if checkerror
      if side1 == side2 && side1 == side3
      :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      elsif side1 != side2 && side2 != side3 && side1 != side3
        :scalene     
      end
    end
    
  end

   def checkerror
    # check negatives
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    #check inequality
    elsif (side1 + side2 <= side3) || (side1 + side3 <= side2) || (side2 + side3 <= side1)
      raise TriangleError, "That's impossible!"
    else
      true
    end
  end

end


class TriangleError < StandardError
end

