
import java.util.ArrayList;
import java.util.Collections;

public class Collections_colors {

	public static void main(String[] args) {
		
		ArrayList<String> colors= new ArrayList<>();
		
		colors.add("red");
		colors.add("blue");
		colors.add("purple");
		colors.add("yellow");
		
		System.out.println("Q "+colors);
		
//		Q7.Modify the above Java program to sort a given array list. (Hint : Use the class Collections)

		Collections.sort(colors);
		System.out.println("Q7. "+colors+" <-(Sorting the elements)");
		
//		Q8.Modify the above Java program to copy one array list into another.
//		  (Hint : Use the class Collections)
		
		ArrayList<String> copyColor =new ArrayList<>();
		
//		copyColor.add("");
//		copyColor.add("");
//		copyColor.add("");
//		copyColor.add("");	
//		Collections.copy(copyColor,colors);
		 
		// by for each loop
		for(String copy: colors) {
			copyColor.add("");
		}
		Collections.copy(copyColor,colors);
		System.out.println("Q8. "+copyColor+" <-(This is copy)");
		
//		Q9.Modify the above Java program to shuffle elements in a array list.
//		   (Hint : Use the class Collections)
		
		Collections.shuffle(colors);
		System.out.println("Q9. "+colors+" <-(shuffle of an elements)");
		
//		Q10.Modify the above Java program to reverse elements in a array list.
//		   (Hint : Use the class Collections)
		
		Collections.reverse(colors);
		System.out.println("Q10. "+colors+" <-(Reverse the elements)");
		
	}

}
