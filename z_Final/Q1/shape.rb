class Shape
    @@className = "Shape"
    def initialize()
        @perimeter = nil
        @area = nil
    end
    def print()
        if !@perimeter and !@area
            puts("#{self.class}; Perimeter = undefined; Area = undefined")
        elsif !@perimeter
            puts("#{self.class}; Perimeter = undefined; Area = #@area")
        else
            puts("#{self.class}; Perimeter = #@perimeter; Area = #@area")
        end
    end
    def perimeter()
        @perimeter
    end
    def area()
        @area
    end
end

# shape = Shape.new
# shape.print
# puts shape.perimeter
# puts shape.area


        