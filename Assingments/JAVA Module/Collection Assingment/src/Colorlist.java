
import java.util.ArrayList;
import java.util.Collections;

public class Colorlist {

	public static void main(String[] args) {
		ArrayList<String> colors= new ArrayList<>();
		
		colors.add("red");
		colors.add("blue");
		colors.add("white");
		colors.add("green");
		
		System.out.println("Q1. "+colors);
		
//		2.Modify the above Java program to insert an element into the array list at the first position.
		colors.add(0, "yellow");
		System.out.println("Q2. "+colors);
		
//		3.Modify the above Java program to retrieve an element (at a specified index) 
//		  from a given array list.
		String c=colors.get(3);
		System.out.println("Q3. "+c);
		
//		4.Modify the above Java program to update specific array element by given element.
		colors.set(1, "purple"); // replacing the elements
		System.out.println("Q4. "+colors);
		
//		5.Modify the above Java program to remove the third element from a array list.
		colors.remove(3);
		System.out.println("Q5. "+colors);  // remove the 3rd element(white)
		
//		6.Modify the above Java program to search an element in a array list
		boolean c1 = colors.contains("purple");
		System.out.println("Q6. "+c1);
		
//		7.Modify the above Java program to sort a given array list. (Hint : Use the class Collections)
		Collections.sort(colors);
		System.out.println("Q7. "+colors);
		
//		8.Modify the above Java program to copy one array list into another. 
//		  (Hint : Use the class Collections)* I have not use the collections copy
		ArrayList<String> colors2 = new ArrayList<>();
		
		for(String val:colors) {
			colors2.add(val);
		}
	
		System.out.println("Q8. "+colors2);
		
	}

}
