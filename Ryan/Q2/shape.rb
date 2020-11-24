# class shape
class Shape
  attr_accessor :p, :area

  def initialize; end

  def print
    if @p.nil? && @area.nil?
      puts format('Name is: %s, Area is : undefined, Permimeter is : undefined',
                  self.class, @area)
    elsif @p.nil?
      puts format('Name is: %s, Area is : %.3f, Permimeter is : undefined',
                  self.class, @area)
    elsif @area.nil?
      puts format('Name is: %s, Area is : undefined, Permimeter is : %.3f',
                  self.class, @p)
    else
      puts format('Name is: %s, Perimeter is: %.3f, Area is : %.3f',
                  self.class, @p, @area)
    end
  end

  def perimeter
    nil
  end

  def area
    nil
  end
end


