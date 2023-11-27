
import java.util.Scanner;
public class Question13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Enter the string");
		Scanner sc = new Scanner(System.in);
		String s=sc.next();
		boolean flag=true;
		for (int i=0;i<Math.floor(s.length()/2);i++) {
			if(s.charAt(i)!=s.charAt(s.length()-i-1)) {
				System.out.println(s+" is not palindrome");
				flag=false;
				break;
			}
		}
		if(flag) {
			System.out.println(s+" is palindrome");
		}
		
	}

}
