class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize (side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
     @sides_array = [@side_1, @side_2, @side_3]
  end

  def valid?
     sorted_sides = @sides_array.sort
     valid_lengths = @sides_array.all? { |side| side >= 0 }
     valid_lengths && (sorted_sides[0] + sorted_sides[1] > sorted_sides[2])
   end

   def kind
     if valid?
       case @sides_array.uniq.size
       when 1 then :equilateral
       when 2 then :isosceles
       else        :scalene
       end
     else
       raise TriangleError
     end
   end

  class TriangelEerror < StandardError

  end
end
