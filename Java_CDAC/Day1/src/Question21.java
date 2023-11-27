import java.util.Scanner;

public class Question21 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Enter the two number and operation(+,-,/,*)");
		Scanner sc = new Scanner(System.in);
		int n1=sc.nextInt();
		int n2=sc.nextInt();
		String c=sc.next();
		switch(c) {
		case "+":
			System.out.println(n1+n2);
			break;
		case "-":
			System.out.println(n1-n2);
			break;
		case "/":
			System.out.println(n1/n2);
			break;
		case "*":
			System.out.println(n1*n2);
			break;
	}
	}
}
