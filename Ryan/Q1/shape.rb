# class shape
class Shape
  attr_accessor :perimeter, :area

  def initialize; end

  def print
    puts "Name is: #{self.class}, Perimeter is: #{@perimeter}, Area is : #{@area}"
  end

  def perimeter
    nil
  end

  def area
    nil
  end
end
