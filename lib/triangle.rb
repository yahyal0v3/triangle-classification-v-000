require 'pry'

class Triangle
  # write code here

  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
  end

  def kind
    binding.pry
    kind = nil
    @sides.combination(3).each do |a, b, c|
      if a == b && b == c
        kind = :equilateral
      elsif b != c && a != b && a != c
        kind = :scalene
      elsif a < 1 || b < 1 || c < 1
        raise TriangleError
      elsif a < b && c < b || b < a && c < a || a < c && b < c
        raise TriangleError
      else
        kind = :isosceles
      end
    end
    kind
  end

end


class TriangleError < StandardError
 # triangle error code
 def message
   "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. Further, each side must be larger than 0."
 end
end
