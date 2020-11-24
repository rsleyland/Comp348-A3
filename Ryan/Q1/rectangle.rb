require_relative 'shape'
# Class rectangle
class Rectangle < Shape

  def initialize(height, width)
    super()
    perimeter(height, width)
    area(height, width)
  end

  def perimeter(height, width)
    self.p = if !(height.zero? || width.zero?)
               (2 * height) + (2 * width)
             else
               0
             end
  end

  def area(height, width)
    self.area = height * width
  end
end

