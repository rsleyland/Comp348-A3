include Math
require_relative 'shape.rb'

class Circle < Shape
    def initialize(radius)
        if (radius.class == Integer or radius.class == Float) and radius >= 0 then
            @radius = radius
            @perimeter = 2*PI*@radius
            @area = PI*@radius*@radius
        else
            @radius = @perimeter = @area = nil
        end
    end
    def perimeter()
        if @radius != nil then
            return @perimeter
        end
    end
    def area()
        if @radius != nil then
            return @area
        end
    end
end

# circle = Circle.new(1)
# circle.print
# puts circle.perimeter
# puts circle.area
