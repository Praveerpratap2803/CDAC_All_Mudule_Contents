package pkg1;

public class MathOperation {
	public void add(int x,int y){
		System.out.println(x+y);
	}
	public void add(String x,String y) {
		System.out.println(x+y);
	}
	public double add(double x, double y) {
		return x+y;
	}
	public void sum(int... n) {
		int res=0;
		for(int i=0;i<n.length;i++) {
			res+=n[i];	
		}
		System.out.println(res);
	}
	
}
