import java.util.Scanner;

public class Question7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the character");
		char c = sc.next().charAt(0);
		
		if(c=='a' || c=='e' || c=='i' || c=='o' || c=='u') {
			System.out.println(c+" is vowel");
		}else {
			System.out.println(c+" is consonent");
		}
		
	}

}
