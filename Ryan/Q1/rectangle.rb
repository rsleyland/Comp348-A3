require './shape'
# Class rectangle
class Rectangle < Shape

  def initialize(height, width)
    super()
    perimeter(height, width)
    area(height, width)
  end

  def perimeter(height, width)
    self.perimeter = (2 * height) + (2 * width)
  end

  def area(height, width)
    self.area = height * width
  end
end
