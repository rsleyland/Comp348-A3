class Shape
  def initialize()
  end

  def print()
    perimeter
    area
    if (self.perimeter() == nil)
      perimeter = "undefined"
    else
      perimeter = self.perimeter().to_s
    end
    if (self.area() == nil)
      area = "undefined"
    else
      area = self.area().to_s
    end
    puts self.class.to_s + ", perimeter: " + perimeter + ", area: " + area
  end

  def perimeter()
    return nil
  end

  def area()
    return nil
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius.to_f
  end

  def perimeter()
    return 2 * Math::PI * @radius
  end

  def area()
    return Math::PI * @radius ** 2
  end
end

class Rectangle < Shape
  def initialize(height, width)
    @height = height.to_f
    @width = width.to_f
  end

  def perimeter()
    return 2 * ( @height + @width )
  end

  def area()
    return @height * @width
  end
end

class Ellipse < Shape
  def initialize(sMajor, sMinor)
    @sMajor = sMajor.to_f
    @sMinor = sMinor.to_f
  end

  def area()
    return Math::PI * @sMajor * @sMinor
  end

  def eccentricity()
    return Math.sqrt(@sMajor ** 2 - @sMinor ** 2)
  end
end