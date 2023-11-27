package test;
import code.Shape;
import code.Circle;
import code.Rectangle;
import code.Square;

public class tester {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Shape s1;
		//s1 = new Shape();//error
		
		Circle c1 = new Circle(10);
		c1.area();
		System.out.println(c1);
		
		Rectangle r1 = new Rectangle();
		r1.area();
		System.out.println(r1);
		
		Square sq1 = new Square();
		sq1.area();
		System.out.println(r1);
		
		Shape[] shape = new Shape[3];
		shape[0]=c1;
		shape[1]=r1;
		shape[2]=sq1;
		
		System.out.println(c1.hashCode()+" "+shape[0].hashCode());
		
		((Circle)shape[0]).circleMethod();
		
		
	}

}
