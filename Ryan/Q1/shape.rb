# class shape
class Shape
  attr_accessor :perimeter, :area

  def initialize; end

  def print
    if @perimeter.nil?
      puts format('Name is: %s, Area is : %.3f',
                  self.class, @area)
    else
      puts format('Name is: %s, Perimeter is: %.3f, Area is : %.3f',
                  self.class, @perimeter, @area)
    end
  end

  def perimeter
    nil
  end

  def area
    nil
  end
end


