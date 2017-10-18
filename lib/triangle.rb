require 'pry'

class Triangle
  # write code here

  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
  end

  def kind
    boolean = @sides.combination(2).any? {|a, b| a == b }
      if boolean == true
        :equilateral
      end
  end

end


class TriangleError < StandardError
 # triangle error code
end
