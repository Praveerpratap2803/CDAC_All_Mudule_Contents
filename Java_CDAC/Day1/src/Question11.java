import java.lang.Math;
public class Question11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n = 12;
		boolean flag = true;
		
		for (int i = 2;i <  Math.sqrt(n); i++) {
			if (n % i == 0) {
				System.out.println("Number is not prime");
				flag = false;
				break;
			}
		}
		if (flag != false) {
			System.out.println("Number is prime");
		}
	}

}
