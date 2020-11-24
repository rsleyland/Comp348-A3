require_relative 'shape'
require_relative 'circle'
require_relative 'rectangle'
require_relative 'ellipse'

f = File.new('shapes.txt')
while line = f.gets
  line_splits = line.split(/\s/)

  case line_splits[0]
  when 'shape'
    Shape.new.print
  when 'circle'
    if line_splits[1].to_i.negative?
      puts 'Invalid radius'
    else
      Circle.new(line_splits[1].to_i).print
    end
  when 'rectangle'
    if line_splits[1].to_i.negative?
      puts 'Invalid Height'
    elsif line_splits[2].to_i.negative?
      puts 'Invalid Width'
    else
      Rectangle.new(line_splits[1].to_i, line_splits[2].to_i).print
    end
  when 'ellipse'
    if line_splits[1].to_i.negative?
      puts 'Invalid Height'
    elsif line_splits[2].to_i.negative?
      puts 'Invalid Width'
    else
      Ellipse.new(line_splits[1].to_i, line_splits[2].to_i).print
    end
  else
    puts 'NOT A SHAPE!'
  end
end




