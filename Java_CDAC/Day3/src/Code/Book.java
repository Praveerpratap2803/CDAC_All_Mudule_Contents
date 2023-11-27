package Code;
import java.util.Scanner;

public class Book {
	int bookId,price;
	String name,author;
	public Book(){
		bookId=1;
		name="Harray Potter";
		author="J K Rolling";
		price=99;
	}
	public Book(int bookId,String name,String author,int price){
		this.name= name;
		this.author=author;
		this.bookId=bookId;
		this.price=price;
	}
	public String getName() {
		return this.name;
	}
	public int getPrice() {
		return this.price;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setAuthor(String author) {
		this.author= author;
	}
//	public String getBookByBookId(int id) {
//		return "Book id - "+this.bookId+" Name - "+this.name+" Author - "+this.author+" Price - "+this.price;
//	}
	public String display() {
//		System.out.println("Book id - "+this.bookId+" Name - "+this.name+" Author - "+this.author+" Price - "+this.price);
		String a = "Book id - "+this.bookId+" Name - "+this.name+" Author - "+this.author+" Price - "+this.price;

		return a;
	}
	public String displayName() {
//		System.out.println("Book id - "+this.bookId+" Name - "+this.name+" Author - "+this.author+" Price - "+this.price);
		String a = " Name - "+this.name;
		
		return a;
	}
}
