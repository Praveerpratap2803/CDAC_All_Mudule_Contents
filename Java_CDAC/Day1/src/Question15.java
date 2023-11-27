

public class Question15 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n=1234;
		String rn="";
		while(n>0) {
			int l=n%10;
			rn+=String.valueOf(l);
			n=n/10;
		}
		System.out.println(rn);
	}

}
