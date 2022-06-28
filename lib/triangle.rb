class Triangle
  # write code here

  attr_accessor :a , :b , :c

  def initialize(a,b,c)
    @a=[a , b , c].sort() [0]
    @b=[a , b , c].sort() [1]
    @c=[a , b , c].sort() [2]
  end

  def kind
    if self.is_triangle?
      if @a==@c
        return :equilateral
      elsif @a==@b or @b==@c
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  def is_triangle?
    if a <=0 or a+b<=c
      return false
    else
      return true
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle."
    end
  end

end
