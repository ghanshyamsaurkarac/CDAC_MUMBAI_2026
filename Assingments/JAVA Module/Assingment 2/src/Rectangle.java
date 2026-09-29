
public class Rectangle {

	int length;
	int breadth;

	public Rectangle(int length, int breadth) {
		this.length = length;
		this.breadth = breadth;
	}

	public int Area() {
		return length * breadth;
	}

	public int Perimeter() {
		return 2 * (length + breadth);
	}

	public static void main(String[] args) {

		// rectangle part
		Rectangle r = new Rectangle(5, 10);

		System.out.println("Area is Rectangle : " + r.Area());
		System.out.println("Perimeter is Rectangle : " + r.Perimeter());

		System.out.println("====================================");

		// Square part
		Square s = new Square(5);

		System.out.println("Area is Square: " + s.Area());
		System.out.println("Perimeter is Square : " + s.Perimeter());

	}

}

class Square extends Rectangle {

	int side;

	public Square(int side) {
		super(side, side);
	}

}
