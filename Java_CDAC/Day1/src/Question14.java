import java.util.Scanner;

public class Question14 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Enter the number");
		Scanner sc = new Scanner(System.in);
		int n=sc.nextInt();
		int sumOfEven=0,sumOfOdd=0;
		for (int i=1;i<n;i++) {
			if(i%2==0) {
				sumOfEven+=i;
			}else {
				sumOfOdd+=i;
			}
		}
		System.out.println("Even and odd sum are "+sumOfEven+" "+sumOfOdd);
	}

}
