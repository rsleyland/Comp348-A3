require_relative 'shape'
require_relative 'circle'
require_relative 'rectangle'
require_relative 'ellipse'

ellipse = Ellipse.new(3, 4)
ellipse.print
ellipse.eccentricity

new_shape = Rectangle.new(4, 6)
new_shape.print

plain_jane = Shape.new
plain_jane.p = 23
plain_jane.area = 2444

plain_jane.print

circle1 = Circle.new(-2)
circle1.print