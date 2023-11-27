

public class Question16 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n=13;
		for(int j=2;j<=n;j++) {
			boolean flag = true;
			for (int i = 2;i <  Math.sqrt(j); i++) {
				if (j % i == 0) {
//					System.out.println("Number is not prime");
					flag = false;
					break;
				}
			}
			if (flag != false) {
				System.out.println(j);
			}
		}	
	}

}
