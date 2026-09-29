
public class Shape {

	public void Display() {
		System.out.println("This is shape");
	}
	
	public static void main(String[] args) {
		
		Square s=new Square();
		
		s.Display();
		s.RDisplay();
		s.SDisplay();
	}

}

class Rectangle extends Shape{
	
	public void RDisplay() {
		System.out.println("This is Rectangle");
	}
	
}

class Circle extends Shape{
	
	public void CDisplay() {
		System.out.println("This is Circle");
	}
	
}

class Square extends Rectangle {
	
	public void SDisplay() {
		System.out.println("Square is a rectangle");
	}
	
}