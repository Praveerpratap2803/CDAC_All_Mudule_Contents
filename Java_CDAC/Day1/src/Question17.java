
public class Question17 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n=153;
		int n3=n;
		String ns = String.valueOf(n);
		int nl = ns.length();
		System.out.println(nl);
		int sum=0;
		while(n3>0) {
			int n2=n3%10;
			sum+=Math.pow(n2,nl);
			n3=n3/10;
		}
		System.out.println(sum);
		if(sum==n) {
			System.out.println("number is armstrong");
		}else {
			System.out.println("number is not armstrong");
		}

	}

}
