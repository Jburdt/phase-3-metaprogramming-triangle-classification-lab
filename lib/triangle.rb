require "pry"
class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
     valid_triangles 
    if side1 == side2 && side2 == side3 
      return :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      return :isosceles
    elsif side1 != side2 || side2 != side3 || side3 != side1
      return :scalene
    if side1 < 0 && side2 < 0 && side3 < 0
      raise TriangleError
    end
  end
  end

  def valid_triangles
    raise TriangleError unless (side1 > 0 && side2 > 0 && side3 > 0) && (side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2)
  end

  class TriangleError < StandardError
  end

end
