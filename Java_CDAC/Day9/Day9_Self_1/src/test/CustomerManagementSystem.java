package test;
import code.Customer;
import java.util.Collections;
import java.util.ArrayList;
import java.util.Scanner;
import util.ACustomer;
import util.SortByFirstName;
public class CustomerManagementSystem {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Customer> allCustomer = ACustomer.getAllCustomer();
		int choise=-1;
		Scanner sc = new Scanner(System.in);
		try {
			do {
				System.out.println("Enter the choise 1:Add Customer(Extra work:customer with unique email is mst get added)\r\n" + 
						"2:Display All Customers\r\n" + 
						"3:Show Customer's name only.\r\n" + 
						"4:Show customer (sort by custid)\r\n" + 
						"5:Show customer(sort by firstName)\r\n" + 
						"6:show customer(sort by Salary)\r\n" + 
						"7:display customer having salary>5000\r\n" + 
						"8:Display customers whose name contains ‘a’ and length greater than 5\r\n" + 
						"");
				choise = sc.nextInt();
				switch(choise) {
				case 1:
					System.out.println("Enter the firstname, lastname, email, salary");
					String firstname=sc.next();
					String lastname=sc.next();
					String email=sc.next();
					double salary=sc.nextInt();
					boolean flag=true;
					for(Customer c:allCustomer) {
						if(c.getEmail().equals(email)) {
							flag=false;
						}
					}
					if(flag) {
						allCustomer.add(new Customer(firstname,lastname,email,salary));
					}else {
						System.out.println("Email already exists");
					}
//					allCustomer.add(new Customer(sc.next(),sc.next(),sc.next(),sc.nextInt()));
					//Tejveer Pratap tej@gmail.com 100
					break;
				case 2:
					for(Customer c:allCustomer) {
						System.out.println(c);
					}
					break;
				case 3:
					System.out.println("Enter the customer customer id");
					int custid = sc.nextInt();
					for (Customer i :allCustomer) {
						if(i.getCustid()==custid) {
							System.out.println(i.getFirstName()+"  "+i.getLastname());
						}
					}
					break;
				case 4:
					Collections.sort(allCustomer);
					for(Customer i:allCustomer) {
						System.out.println(i);
					}
					break;
				case 5:
					Collections.sort(allCustomer,new SortByFirstName());
					break;
				case 6:
					Collections.sort(allCustomer, (o1,o2)->{
						if(o1.getSalary()<o1.getSalary()) {
							return -1;
						}else if(o1.getSalary()>o1.getSalary()) {
							return 1;
						}else {
							return 0;
						}
						 
					});
					break;
				case 7:
					for (Customer i :allCustomer) {
						if(i.getSalary()>5000) {
							System.out.println(i);
						}
					}
					break;
				case 8:
					for (Customer i :allCustomer) {
						if(i.getFirstName().contains("a") && i.getFirstName().length()>5) {
							System.out.println(i);
						}
					}
					break;
					
					
				}
				
			}while(choise!=0);
		}
		catch(Exception e) {
			
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

}
