require_relative 'shape'
# Class ellipse
class Ellipse < Shape

  def initialize(semi_major, semi_minor)
    super()
    if semi_major <= 0 || semi_minor <= 0
      self.area = 0
    else
      area(semi_major, semi_minor)
      @semi_minor = semi_minor
      @semi_major = semi_major
    end
  end

  def area(semi_major, semi_minor)
    self.area = Math::PI * semi_major * semi_minor
  end

  def eccentricity
    puts format('Eccentricty of ellipse is: %.3f', Math.sqrt((@semi_minor**2 - @semi_major**2).abs))
  end
end
