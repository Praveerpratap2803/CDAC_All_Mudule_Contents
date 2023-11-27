import java.util.Scanner;

public class Question6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the Basic Salary");
		n=sc.nextInt();
		if(n<50000) {
			System.out.println("Tax = "+0);
		}
		else if(50000>n && n<300000) {
			System.out.println("Tax="+(0.2*n));
		}else {
			System.out.println("Tax="+(0.3*n));
		}
	}

}
