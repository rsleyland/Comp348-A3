include Math
require_relative "shape.rb"

class Ellipse < Shape
    def initialize(a,b)
        if (a.class == Integer or a.class == Float) and (b.class == Integer or b.class == Float) and a >= 0 and b >= 0 then
            @a = a
            @b = b
            @perimeter = nil
            @area = PI*a*b
            @eccentricity = Math.sqrt((a*a-b*b).abs)

        else
            @a = @b = @perimeter = @area = @eccentricity = nil
        end
    end
    def area()
        return @area
    end
    def eccentricity()
        return @eccentricity
    end
end

# ellipse = Ellipse.new(5,4)
# ellipse.print
# puts ellipse.perimeter
# puts ellipse.area
# puts ellipse.eccentricity