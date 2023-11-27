package code;

public class Square extends Shape{
	int s=25;
	public double area() {
		return s*s;
	}
	public String toString() {
		return "side "+s+"area "+area(); 
	}
	public void squareMethod(){
		 System.out.println("----Square Method----");
	}
}
