class Shape
    @@className = "Shape"
    def initialize()
        @perimeter = nil
        @area = nil
    end
    def print()
        puts("#{self.class}; Perimeter = #@perimeter; Area = #@area")
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


        