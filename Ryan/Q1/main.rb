require_relative 'shape'
require_relative 'circle'
require_relative 'rectangle'
require_relative 'ellipse'

ellipse = Ellipse.new(3, 4)
ellipse.print
ellipse.eccentricity

newShape = Rectangle.new(4, 6)
newShape.print

