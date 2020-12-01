require_relative 'shape'
# Class rectangle
class Rectangle < Shape

  def initialize(height, width)
    super()
    if height <= 0 || width <= 0
      self.p = 0
      self.area = 0
    else
      perimeter(height, width)
      area(height, width)
    end
  end

  def perimeter(height, width)
    self.p = (2 * height) + (2 * width)
  end

  def area(height, width)
    self.area = height * width
  end
end
