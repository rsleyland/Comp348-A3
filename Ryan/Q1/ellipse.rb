require './shape'
# Class ellipse
class Ellipse < Shape

  def initialize(semi_major, semi_minor)
    super()
    area(semi_major, semi_minor)
    @semi_minor = semi_minor
    @semi_major = semi_major
  end

  def area(semi_major, semi_minor)
    self.area = Math::PI * semi_major * semi_minor
  end

  def eccentricity
    puts format('Eccentricty of ellipse is: %.3f', Math.sqrt(@semi_minor**2 - @semi_major**2))
  end
end
