require_relative "../question1/shape.rb"
require_relative "../question1/circle.rb"
require_relative "../question1/rectangle.rb"
require_relative "../question1/ellipse.rb"

# create hash
hash = {"shape" => 0, "rectangle" => 0, "circle" => 0, "ellipse" => 0 }

puts "\n====== Shape Information ======\n\n"

# finds file in current directory
File.open(File.join(File.dirname(__FILE__),"shapes.txt")).each { |line|
    # Checks if line starts with a valid shape
    if line =~  /^(shape|rectangle|ellipse|circle)/ then
        
        # if it starts with "shape" ensure that is the only thing in line and print
        if line =~ /^shape/ then
            if line =~/^shape$/
                hash["shape"] = hash["shape"] + 1
                Shape.new.print
            else
                puts "Error: Invalid Shape"
            end
        end

        # if it starts with "rectangle" ensure that it receives exactly 2 non-negative parameters
        if line =~ /^rectangle/ then
            if line =~ /^rectangle \d*\.?\d+ \d*\.?\d+$/ then
                hash["shape"] = hash["shape"] + 1
                hash["rectangle"] = hash["rectangle"] + 1
                Rectangle.new(Float(line.split(" ")[1]), Float(line.split(" ")[2])).print
            else
                puts "Error: Invalid Rectangle"
            end
        end

        # if it starts with "circle" ensure that it receives exactly 1 non-negative parameter
        if line =~ /^circle/ then
            if line =~ /^circle \d*\.?\d+$/ then
                hash["shape"] = hash["shape"] + 1
                hash["circle"] = hash["circle"] + 1
                Circle.new(Float(line.split(" ")[1])).print
            else
                puts "Error: Invalid Circle"
            end
        end

        # if it starts with "ellipse" ensure that it receives exatly 2 non-negative parameters
        if line =~ /^ellipse/ then
            if line =~ /^ellipse \d*\.?\d+ \d*\.?\d+$/ then
                hash["shape"] = hash["shape"] + 1
                hash["ellipse"] = hash["ellipse"] + 1
                Ellipse.new(Float(line.split(" ")[1]), Float(line.split(" ")[2])).print
            else
                puts "Error: Invalid Ellipse"
            end
        end
    else
        puts "Error: Not a Shape"
    end
}

# print statistics
puts "\n====== Statistics ======\n\n"
hash.each do |key, value|
    puts "#{key.capitalize()}: #{value}"
end

puts "\n"