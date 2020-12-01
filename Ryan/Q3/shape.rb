# class shape
class Shape
  attr_accessor :p, :area

  def initialize; end

  def print
    if @p.nil? && @area.nil?
      puts format('%s, Permimeter is : undefined, Area is : undefined,',
                  self.class)
    elsif @p.nil?
      puts format('%s, Permimeter is : undefined, Area is : %.3f',
                  self.class, @area)
    elsif @area.nil?
      puts format('%s, Permimeter is : %.3f, Area is : undefined',
                  self.class, @p)
    else
      puts format('%s, Perimeter is: %.3f, Area is : %.3f',
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


