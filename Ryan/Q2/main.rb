require_relative 'shape'
require_relative 'circle'
require_relative 'rectangle'
require_relative 'ellipse'

f = File.new('shapes.txt')
while line = f.gets
  line_splits = line.split(/\s/)

  case line_splits[0]
  when nil
    puts 'EMPTY LINE!'
  when 'shape'
    Shape.new.print
  when 'circle'
    if line_splits[1].to_f.negative?
      puts 'Error: Invalid Circle -- radius < 0'
    else
      Circle.new(line_splits[1].to_f).print
    end
  when 'rectangle'
    if line_splits[1].to_f.negative?
      puts 'Error: Invalid Rectangle -- Height < 0'
    elsif line_splits[2].to_f.negative?
      puts 'Error: Invalid Rectangle -- Width < 0'
    else
      Rectangle.new(line_splits[1].to_f, line_splits[2].to_f).print
    end
  when 'ellipse'
    if line_splits[1].to_f.negative?
      puts 'Error: Invalid Ellipse -- Semi-Major < 0'
    elsif line_splits[2].to_f.negative?
      puts 'Error: Invalid Ellipse -- Semi-Minor < 0'
    else
      Ellipse.new(line_splits[1].to_f, line_splits[2].to_f).print
    end
  else
    puts 'NOT A SHAPE!'
  end
end
