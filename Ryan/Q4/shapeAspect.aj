public privileged aspect shapeAspect {

	
	declare parents: Circle implements Shape;
	declare parents: Rectangle implements Shape;

	private static int idCount=0;
	private int Shape.Id;
	private int Circle.Id;
	private int Rectangle.Id;

	public String Circle.getName() {
		return "Circle";
	}
	public String Rectangle.getName() {
		return "Rectangle";
	}
	
	public int Shape.getId() {
		return this.Id;
	}
	
	public String Circle.toString() {
		return (this.getName()+"("+(int)radius+")");
	}
	
	public String Rectangle.toString() {
		return (this.getName()+"("+(int)width+", "+(int)height+")");
	}
	//update id of each shape after constructor and increment static var idCount
	after(Shape s): execution(Shape+.new(..))&&target(s){
		s.Id = ++idCount;
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
	
	//checks if width or height of rectangle is negative before returning & getArea()
	double around(Rectangle r) : execution(double Rectangle.getArea())&&target(r) {
		if (r.width<0 || r.height < 0) {
			return 0;
		}
		return proceed(r);
	}
		
}
