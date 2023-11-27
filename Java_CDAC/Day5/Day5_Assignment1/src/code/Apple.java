package code;

public class Apple extends Fruit {
	

	Apple(String color,double weight,String name,boolean fresh){
		super(color, weight, name, fresh);
	}
	
	public String test() {
		return "sweet n sour";
	}
}
