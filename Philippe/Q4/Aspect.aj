privileged aspect Aspect {

    private static int idCounter = 1;

    int Rectangle.id;
    int Circle.id;

    declare parents: Rectangle implements Shape;

    public String Rectangle.getName() {
        return "Rectangle";
    }

    public String Rectangle.toString() {
        return getName() + "(" + (int) this.width + ", " + (int) this.height + ")";
    }

    public int Rectangle.getId() {
        return this.id;
    }

    pointcut handlingRectangleNegative(Rectangle r):
            (call(double *.getPerimeter()) ||
            call(double *.getArea()))
            && target(r);

    double around(Rectangle r): handlingRectangleNegative(r) {
        if (r.width < 0 || r.height < 0)
            return 0;
        return proceed(r);
    }

    pointcut constructorRectangle(Rectangle r): execution(Rectangle.new(..)) && this(r);
    after(Rectangle r): constructorRectangle(r) {
        r.id = idCounter++;
    }

    
    declare parents: Circle implements Shape;

    public String Circle.getName() {
        return "Circle";
    }

    public String Circle.toString() {
        return getName() + "(" + (int) this.radius + ")";
    }

    public int Circle.getId() {
        return this.id;
    }

    pointcut constructorCircle(Circle c): execution(Circle.new(..)) && target(c);
    after(Circle c): constructorCircle(c) {
        c.id = idCounter++;
    }

    pointcut circleArea(Circle c): execution(double *.getArea()) && this(c);
    double around(Circle c): circleArea(c) {
        return Math.PI * Math.pow(c.radius, 2);
    }
    pointcut handlingCircleNegative(Circle c):
            (call(double *.getPerimeter()) ||
                    call(double *.getArea()))
                    && target(c);

    double around(Circle c): handlingCircleNegative(c) {
        if (c.radius < 0)
            return 0;
        return proceed(c);
    }

}
