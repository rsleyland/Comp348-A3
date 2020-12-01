require_relative 'shape'
# class Circle
class Circle < Shape

  def initialize(radius)
    super()
    if radius <= 0
      self.p = 0
      self.area = 0
    else
      perimeter(radius)
      area(radius)
    end
  end

  def perimeter(radius)
    self.p = (radius * 2 * Math::PI)
  end

  def area(radius)
    self.area = (radius**2 * Math::PI)
  end
end