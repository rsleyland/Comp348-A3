require_relative 'shape'
require_relative 'circle'
require_relative 'rectangle'
require_relative 'ellipse'

def print_stats(stats_hash)
  puts "\nStatistics:"
  puts "\tShape(s): #{stats_hash['shape']}"
  puts "\tRectangle(s): #{stats_hash['rectangle']}"
  puts "\tCircle(s): #{stats_hash['circle']}"
  puts "\tEllipse(s): #{stats_hash['ellipse']}"
end

shape_stats = {  'shape' => 0,
                 'circle' => 0,
                 'rectangle' => 0,
                 'ellipse' => 0 }

f = File.new('shapes.txt')
puts "\n---------- Start -> Processing file: #{f.path} ----------\n\n"
while (line = f.gets)
  line_splits = line.split(/\s/)

  case line_splits[0]
  when nil
    puts 'EMPTY LINE!'
  when 'shape'
    shape_stats['shape'] = shape_stats['shape'] + 1
    Shape.new.print
  when 'circle'
    if line_splits[1].to_f.negative?
      puts 'Error: Invalid Circle -- radius < 0'
    else
      Circle.new(line_splits[1].to_f).print
      shape_stats['shape'] = shape_stats['shape'] + 1
      shape_stats['circle'] = shape_stats['circle'] + 1
    end
  when 'rectangle'
    if line_splits[1].to_f.negative?
      puts 'Error: Invalid Rectangle -- Height < 0'
    elsif line_splits[2].to_f.negative?
      puts 'Error: Invalid Rectangle -- Width < 0'
    else
      Rectangle.new(line_splits[1].to_f, line_splits[2].to_f).print
      shape_stats['shape'] = shape_stats['shape'] + 1
      shape_stats['rectangle'] = shape_stats['rectangle'] + 1
    end
  when 'ellipse'
    if line_splits[1].to_f.negative?
      puts 'Error: Invalid Ellipse -- Semi-Major < 0'
    elsif line_splits[2].to_f.negative?
      puts 'Error: Invalid Ellipse -- Semi-Minor < 0'
    else
      Ellipse.new(line_splits[1].to_f, line_splits[2].to_f).print
      shape_stats['shape'] = shape_stats['shape'] + 1
      shape_stats['ellipse'] = shape_stats['ellipse'] + 1
    end
  else
    puts 'NOT A SHAPE!'
  end
end
puts "\n---------- End -> Processing file: #{f.path} ----------\n"
f.close
print_stats(shape_stats)
puts "\n---------- Program closing, Goodbye ----------\n"
