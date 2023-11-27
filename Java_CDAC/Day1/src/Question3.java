import java.util.Scanner;

public class Question3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Write a program to swap two numbers.
		int a,b,temp;
		System.out.println("Enter two number");
		Scanner sc = new Scanner(System.in);
		a=sc.nextInt();
		b=sc.nextInt();
		temp=a;
		a=b;
		b=temp;
		System.out.println("a ->"+a+",b ->"+b);
		
	}

}
