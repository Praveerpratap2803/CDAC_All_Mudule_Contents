package tester;
import java.util.Scanner;
import pkg1.ArrayOperation;
public class Question2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int choice;
		ArrayOperation a1 = new ArrayOperation();
		do {
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter the choice 1:Show Array\r\n" + 
					"2:Add element\r\n" + 
					"3:search element\r\n" + 
					"4:doubleArrayElement\r\n" + 
					"5:sortArray");
			choice = sc.nextInt();
			switch(choice) {
			case 1:
				a1.showArray();
				break;
			case 2:
				System.out.println("Enter the element");
				a1.addElement(sc.nextInt());
				break;
			case 3:
				System.out.println("Enter the element");
				a1.searchElement(sc.nextInt());
			case 4:
				System.out.println(a1.doubleArray());
			case 5:
				System.out.println(a1.sortArray());
			default:
				System.out.println("Enter correct choice");
			}
//			System.out.println("Do you want to exit then press 0");
//			choice = sc.nextInt();
		}while(choice!=0);
		
		
	}

}
