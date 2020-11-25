public privileged aspect shapeAspect {

	// declaring extension or implementations of ancestors/interfaces
	declare parents: Circle implements Shape;
	declare parents: Rectangle implements Shape;

	// static counter variable for unique id of shapes
	private static int idCount=0;
	
	//defining int id in shape interface to be used by all subclasses
	private int Shape.id;

	// getName implementation, grabs className of dynamic type
	public String Shape.getName(){
		return this.getClass().getSimpleName();
	}
	
	// getId implementation which return id of calling class that implements Shape interface
	public int Shape.getId() {
		return this.id;
	}
	
	//Circle toString implementation
	public String Circle.toString() {
		return (this.getName()+"("+(int)radius+")");
	}
	
	//Rectangle toString implementation
	public String Rectangle.toString() {
		return (this.getName()+"("+(int)width+", "+(int)height+")");
	}
	
	//update id of each shape after constructor and increment static var idCount
	after(Shape s): execution(Shape+.new(..))&&target(s){
		s.id = ++idCount;
	}
		
	//checks if radius of circle is negative before returning getPerimeter() & getArea()
	double around(Circle c) : (execution(double Circle.getPerimeter()) || execution(double Circle.getArea()))&&target(c) {
		if (c.radius<0) {
			return 0;
		}
		return proceed(c);
	}
	
	//overides getArea() of Circle class (contains RuntimeErrorException) - had to put this advice after one before due to precedence. 
	double around(Circle c): execution(double Circle.getArea()) && target(c){
		return c.radius*c.radius*Math.PI;
	}
	
	//checks if width or height of rectangle is negative before returning getArea()
	double around(Rectangle r) : execution(double Rectangle.getArea())&&target(r) {
		if (r.width<0 || r.height < 0) {
			return 0;
		}
		return proceed(r);
	}
		
}
