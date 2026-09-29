 class Parent{
	
	public void display() {
		
		System.out.println("This is Parent class");
	}
	
}


 class Child extends Parent{
	public void displayC() {
		System.out.println("This is child class");
	}
		
}

public class Q1 {
	
	public static void main(String args[]) {
		
		Parent p =new Parent();
		Child c= new Child();
		
		
		p.display();
		c.displayC();
		c.display();
	}
}