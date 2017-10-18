require 'pry'

class Triangle
  # write code here

  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
  end

  def kind
    binding.pry
    @sides.combination(2).each do |a, b|
      if a == b
        :equilateral
      end
    end
  end

end


class TriangleError < StandardError
 # triangle error code
end
