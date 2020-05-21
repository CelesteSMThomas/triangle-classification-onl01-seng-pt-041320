require 'pry'

class Triangle
  attr_accessor :length_one, :length_two, :length_three
    
    def initialize(length_one, length_two, length_three)
      @length_one = length_one
      @length_two = length_two
      @length_three = length_three
    end

    def kind
      if length_one <= 0 || length_two <= 0 || length_three <= 0
        raise TriangleError
      elsif length_one == length_two && length_one == length_three
          return :equilateral
      elsif
        (length_one == length_two && length_one != length_three) || (length_one == length_three && length_one != length_two) || (length_two == length_three && length_two != length_one)
        return :isosceles
      elsif
        (length_one != length_two) && (length_one != length_three) && (length_two != length_three)
        return :scalene
        binding.pry
      elsif ((length_one + length_two) >= length_three) || ((length_one + length_three) >= length_two) || ((length_two + length_three) >= length_one) 
        raise TriangleError
    end

  end



    class TriangleError < StandardError
    end


end
