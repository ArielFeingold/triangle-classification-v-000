class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initializ, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if @side_one == @side_two && @side_two == @side_three
      :equilateral
    end
  end
end

class TriangelEerror < StandardError

end
