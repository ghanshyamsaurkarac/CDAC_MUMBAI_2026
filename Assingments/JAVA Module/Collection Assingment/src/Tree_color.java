
import java.util.TreeSet;
import java.util.Set;


public class Tree_color {

	public static void main(String[] args) {

//		Q11.Write a Java program to create a new tree set, add some colors (string) 
//		  and print out the tree set.
		
		TreeSet<String> colors =new TreeSet<>();
		
		colors.add("red");
		colors.add("orange");
		colors.add("blue");
		colors.add("white");
		
		System.out.println("Q11. "+colors);
		
//		Q12.Modify the above Java program to add all the elements of a 
//		    specified tree set to another tree set.
		
		TreeSet<String> colors1 =new TreeSet<>();
		
		colors1.add("purple");
		colors1.add("green");
		
		colors1.addAll(colors);
		System.out.println("Q12. "+colors1+" <-(combine the two TreeSet)");
		
//		Q13.Modify the above Java program to create a reverse order 
//		      view of the elements contained in a given tree set.
		
		
		System.out.println("Q13. "+colors1.descendingSet()+" <-(Reversed TreeSet)");
		
//		14.Modify the above Java program to get the first and last elements in a tree set.
		
//		String first=colors1.getFirst();
//		System.out.println("Q14-a. "+first+" <-(First element)");	
		System.out.println("Q14-a. "+colors1.first()+" <-(First element)");	
		
		//last elements
		System.out.println("Q14-b. "+colors1.last()+" <-(Last element)");
		
//		Q15.Write a Java program to get the element in a tree set which is greater than or 
//		    equal to the given element. (Hint : Use the ceiling method of the TreeSet)
		System.out.println("Q15. "+colors1.ceiling("blue")+" <-(Ceil element)");
		
		
		
		
	}

}
