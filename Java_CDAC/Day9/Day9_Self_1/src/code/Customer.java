package code;
//1:Create class Customer: custid,firstname,lastname,email,salary.
//Create CustomerManagementSystem as a tester application
//Store customer details in the suitable ArrayList.
//Provide Menu like
//1:Add Customer(Extra work:customer with unique email is mst get added)
//2:Display All Customers
//3:Show Customer's name only.
//4:Show customer (sort by custid)
//5:Show customer(sort by firstName)
//6:show customer(sort by Salary)
//7:display customer having salary>5000
//8:Display customers whose name contains ‘a’ and length greater than 5

public class Customer implements Comparable<Customer> {
	int custid;
	String firstname,lastname,email;
	double salary;
	private static int idCounter=1001;
	static {
		idCounter=1001;
	}
	public Customer(String firstname,String lastname,String email,double salary){
		this.custid=idCounter;
		idCounter++;
		this.firstname=firstname;
		this.lastname=lastname;
		this.email=email;
		this.salary=salary;
	}
	public String getFirstName() {
		return this.firstname;
	}
	public void setFirstName(String firstName) {
		this.firstname=firstName;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public int getCustid() {
		return custid;
	}
	@Override
	public String toString() {
		return "Customer [custid=" + custid + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", salary=" + salary + "]";
	}
	@Override
	public int compareTo(Customer o) {
		// TODO Auto-generated method stub
		if(this.custid<o.getCustid()) {
			return -1;
		}else if(this.custid>o.getCustid()) {
			return 1;
		}else {
			return 0;
		}
	}
	
}
