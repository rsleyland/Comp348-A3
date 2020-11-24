require_relative 'shape'
# class Circle
class Circle < Shape

  def initialize(radius)
    super()
    perimeter(radius)
    area(radius)
  end

  def perimeter(radius)
    self.p = (radius * 2 * Math::PI)
  end

  def area(radius)
    self.area = (radius**2 * Math::PI)
  end
end
