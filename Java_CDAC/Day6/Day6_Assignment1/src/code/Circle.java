package code;

public class Circle extends Shape{
	int radius;
	public Circle(int radius){
		this.radius = radius;
	}
	public double area() {
		return 3.14*radius*radius;
	}
	public String toString() {
		return "radius "+radius+" area "+area(); 
	}
	public void circleMethod(){
		 System.out.println("----Circle Method----");
	}
}
