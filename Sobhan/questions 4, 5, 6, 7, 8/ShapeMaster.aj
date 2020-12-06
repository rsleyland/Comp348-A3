
public privileged aspect ShapeMaster {
	
	private static int idCounter = 1;
	
	// Question 4: assigning hierarchy 
	declare parents: Circle implements Shape;
	declare parents: Rectangle implements Shape;

	// Question 4: implementing methods via aspects
	public String Circle.getName(){return "Circle";}
	public String Rectangle.getName(){return "Rectangle";}
	
	// Question 5: implementing toString() methods
	public String Circle.toString(){
		return String.format("%s(%.2f)", this.getName(), this.radius);
	}
	public String Rectangle.toString(){
		return String.format("%s(%.2f, %.2f)", this.getName(), this.width, this.height);
	}
	
	// Question 6: implementing circle area: (done in part 7 with negative checking)
//	double around(Circle circle): execution(double Circle.getArea()) && this(circle){
//		return circle.radius * circle.radius * Math.PI;
//	}
	
	// Question 7: negative radius, width, height case
	
	// Question 6 & 7:Circle Area
	double around(Circle circle): execution(double Circle.getArea()) && this(circle){
		if(circle.radius > 0)
			return circle.radius * circle.radius * Math.PI;
		else
			return 0;
	}
	
	// Question 7:Circle Perimeter
	double around(Circle circle): execution(double Circle.getPerimeter()) && this(circle){
		if(circle.radius > 0)
			return proceed(circle);
		else
			return 0;
	}
	
	// Question 7:Rectangle Perimeter & Area
	double around(Rectangle rectangle): (execution(double Rectangle.getPerimeter()) || execution(double Rectangle.getArea())) && this(rectangle){
		if(rectangle.height >= 0 && rectangle.width >= 0)
			return proceed(rectangle);
		else
			return 0;
	}
	
	// Question 8: assigning ids
	
	// Question 8: Creating id properties
	private int Rectangle.id;
	private int Circle.id;
	
	// Question 8: Assigning ids after construction
	after(Circle circle): execution(Circle.new(..)) && this(circle){
		circle.id = idCounter++;
	}
	after(Rectangle rectangle): execution(Rectangle.new(..)) && this(rectangle){
		rectangle.id = idCounter++;
	}
	
	// Question 8: Implementing getId() function
	public int Circle.getId(){return this.id;}
	public int Rectangle.getId(){return this.id;}
	
}
