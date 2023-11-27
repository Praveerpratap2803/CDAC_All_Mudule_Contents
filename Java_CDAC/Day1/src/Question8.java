import java.util.Scanner;

public class Question8 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter three angles of a triangle ");
		int angle1 = sc.nextInt();
		int angle2 = sc.nextInt();
		int angle3 = sc.nextInt();
		int sumOfAngle = angle1 + angle2 + angle3;
		if (sumOfAngle<=180){
			System.out.println("Correct Triangle");
		}else {
			System.out.println("Incorrect Triangle");
		}
		
	}

}
