require_relative "shape.rb"

class Rectangle < Shape
    def initialize(length, width)
        if (length.class == Integer or length.class == Float) and (width.class == Integer or width.class == Float) and (length >= 0 and width >= 0)then
            @width = width
            @length = length
            @area = width*length
            @perimeter = 2*(width+length)
        else
            @width = @length = @area = @perimer = nil
        end
    end
    def perimeter()
        return @perimeter
    end
    def area()
        return @area
    end
end

# rectangle = Rectangle.new(1.5,2)
# rectangle.print
# puts rectangle.perimeter
# puts rectangle.area