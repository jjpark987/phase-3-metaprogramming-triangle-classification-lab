require 'pry'

class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    @sides.each do |side|
      raise TriangleError if side <= 0
    end

    if @sides.sort[0] + @sides.sort[1] <= @sides.sort[2]
      raise TriangleError
    end
    
    if @sides.uniq.length == 3
      :scalene
    elsif @sides.uniq.length == 2
      :isosceles
    elsif @sides.uniq.length == 1
      :equilateral
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end

test1 = Triangle.new(1,1,1)
test2 = Triangle.new(3,2,2)
test3 = Triangle.new(4,5,3)
test4 = Triangle.new(2,4,2)
