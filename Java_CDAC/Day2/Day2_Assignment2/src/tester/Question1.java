package tester;
import java.util.Scanner;

import pkg1.MathOperation;
public class Question1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a=10,b=20,p=30,q=40;
		double c=1.1,d=2.2;
		String e="10",f="20";
		MathOperation o1 = new MathOperation();
		o1.add(a,b);
		o1.add(e, f);
		System.out.println(o1.add(c, d));
		o1.sum(a,b,p,q);
		
		
	}

}
