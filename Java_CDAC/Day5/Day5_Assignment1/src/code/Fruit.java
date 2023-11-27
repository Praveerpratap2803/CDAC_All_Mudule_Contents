package code;

public class Fruit {
	String color,name;
	double weight; 
	boolean fresh;
	public Fruit(String color,double weight,String name,boolean fresh){
		this.color=color;
		this.fresh=fresh;
		this.name=name;
		this.weight=weight;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
//		return super.toString();
		return "name - " + this.name+"color - "+this.color+"weight - "+this.weight;
	}
	public String test() {
		return "no specific taste";
	}
}
