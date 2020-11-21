require './shape'
require './circle'
require './rectangle'
require './ellipse'

ellipse = Ellipse.new(3, 4)
ellipse.print
ellipse.eccentricity

newShape = Rectangle.new(4, 6)
newShape.print

