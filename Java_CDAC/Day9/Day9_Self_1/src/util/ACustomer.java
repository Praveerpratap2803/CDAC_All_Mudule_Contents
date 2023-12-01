package util;

import java.util.ArrayList;

import code.Customer;

public  class ACustomer {
	
	static ArrayList<Customer> a = new ArrayList<Customer>();
	
	public static ArrayList<Customer> getAllCustomer(){
		
		a.add(new Customer("zPraveer","Pratap","xyz@gmail.com",1000.0));
		a.add(new Customer("xPraveer1","Pratap1","xyz1@gmail.com",1100.0));
		a.add(new Customer("yPraveer2","Pratap2","xyz2@gmail.com",1200.0));

		return a;
	}
}
