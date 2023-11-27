package code;

public class Rectangle extends Shape{
	int l=10,b=20;
	public double area() {
		return l*b;
	}
	public String toString() {
		return "length "+l+" breadth "+b+"area "+area(); 
	}
	public void reactangleMethod(){
		 System.out.println("----Rectangle Method----");
	}
}
