require './shape'
# class Circle
class Circle < Shape

  def initialize(radius)
    super()
    perimeter(radius)
    area(radius)
  end

  def perimeter(radius)
    self.perimeter = (radius * 2 * Math::PI)
  end

  def area(radius)
    self.area = (radius**2 * Math::PI)
  end
end

