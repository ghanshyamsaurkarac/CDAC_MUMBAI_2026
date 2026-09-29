import java.util.TreeSet;
public class Tree_Set {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		TreeSet<Integer> tree =new TreeSet<>();
		
		tree.add(45);
		tree.add(62);
		tree.add(73);
		tree.add(21);
		tree.add(98);
		System.out.println(tree);
		
		//Sorted interface
		//First
		System.out.println(tree.first()+" <-(First element in the Set)");
		
		//Last
		System.out.println(tree.last()+" <-(Last element in the Set)");
		
		//Headset
		System.out.println(tree.headSet(73)+" <-(it gives the elements less than given element in headset )");
		
		//Tailset
		System.out.println(tree.tailSet(45)+" <-(it gives the elements greater than given element in headset )");
		
		// Navigation Set
		//Floor : Greatest element less than or equal to that element
		System.out.println(tree.floor(62)+" <-(Floor)");
		
		//Ceil/ceiling :
		
		System.out.println(tree.ceiling(73)+" <-(Ceil)");
		
		
		
		
		
	}

}
