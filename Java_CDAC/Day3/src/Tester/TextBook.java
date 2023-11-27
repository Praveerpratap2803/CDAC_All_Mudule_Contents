package Tester;

import java.util.Scanner;

import Code.Book;

public class TextBook {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int choise;
		Scanner sc = new Scanner(System.in);
		// 1
//		System.out.println("Enter the bookid,name,author and price");
//		Book B1 = new Book(sc.nextInt(),sc.next(),sc.next(),sc.nextInt());
//		B1.display();
//		Book B2 = new Book();
//		B2.display();

		// 2
		Book arr[] = new Book[10];
		int index = 0;
		do {
			System.out.println("Enter the choise - Menu 1:Show All Books\r\n" + "		 Menu 2:Add New Book\r\n"
					+ "		 Menu 3:Update Book\r\n" + "		 Menu 4:Delete Book\r\n"
					+ "		 Menu 5:edit name \r\n" + "		 Menu 6:edit Author\r\n" + "		 Menu 7:edit price\r\n"
					+ "		 Menu 8:get book details by bookid\r\n" + "		 Menu 9:Show All Books price >450\r\n"
					+ "		 Menu 10:Show All Books names only");

			choise = sc.nextInt();
			switch (choise) {
			case 0:
				System.out.println("Exit");
				break;
			case 1:
				System.out.println("All Books are");
				for (int i = 0; i < arr.length; i++) {
					if (arr[i] != null) {
						System.out.println(arr[i].display());
					}
				}
				break;
			case 2:
				System.out.println("Enter the bookid,name,author and price");
				Book B = new Book(sc.nextInt(), sc.next(), sc.next(), sc.nextInt());
				arr[index] = B;
				index++;
				B.display();

				break;
			case 3:
				System.out.println("Enter the book id and name");
				int id = sc.nextInt();
				String s = sc.next();
				if (arr[id] != null) {
					arr[id].setName(s);
				} else {
					System.out.println("Book not exists");
				}
				break;
			case 4:
				System.out.println("Enter the book id to delete");
				int id1 = sc.nextInt();
				arr[id1-1] = null;
			case 6:
				System.out.println("Enter the book id and author ");
				int id2 = sc.nextInt();
				String auth = sc.next();
				arr[id2-1].setAuthor(auth);
			case 8:
				System.out.println("Enter the book id  ");
				int id3 = sc.nextInt();
				arr[id3-1].display();
				
			case 9:
				System.out.println("All Books price >450");
				for (int i = 0; i < arr.length; i++) {
					if (arr[i] != null) {
						if (arr[i] != null && arr[i].getPrice() > 450) {
							System.err.println(arr[i].display());
						}
					}
				}
			case 10:
				System.out.println("All Books name");
				for (int i = 0; i < arr.length; i++) {
					if (arr[i] != null) {
						System.err.println(arr[i].displayName());
					}
				}
			default:
				System.out.println("Enter the right choise");
			}

		} while (choise != 0);
	}

}
