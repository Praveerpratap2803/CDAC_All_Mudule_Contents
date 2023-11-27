import java.util.Scanner;

public class Question12 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hello World");
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int result=0;
		for (int i=1;i<=n;i++) {
			result+=i;
		}
		System.out.println(result);
	}

}
