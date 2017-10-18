require 'pry'

class Triangle
  # write code here

  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
  end

  def kind
    kind = nil
    @sides.combination(3).each do |a, b, c|
      if a == b && b == c
        kind = :equilateral
      elsif b != c && a != b && a != c
        kind = :scalene
      else
        kind = :isosceles
      end
    end
    kind
  end

end


class TriangleError < StandardError
 # triangle error code
end
