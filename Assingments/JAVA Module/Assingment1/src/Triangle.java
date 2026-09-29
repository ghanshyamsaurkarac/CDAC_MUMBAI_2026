
public class Triangle {

	int s1;
	int s2;
	int s3;
	
	public Triangle(int a,int b,int c) {
	 s1=a;
	 s2=b;
	 s3=c;
	}
	
	public static void main(String[] args) {
		int p;
		Triangle T= new Triangle(3,4,5);
		
		p = T.s1+T.s2+T.s3;
		
		System.out.println("Perimeter " + p);

	}

}
