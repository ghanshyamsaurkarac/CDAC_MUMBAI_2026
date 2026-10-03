
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class StudentManagment {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		Queue<Integer> q=new LinkedList<>();

		int choice;
		
		do {
			
			System.out.println("-----------------------------------------");
			System.out.println("1. Add the Student");
			System.out.println("2. Remove the Student from front");
			System.out.println("3. Display the current queue. ");
			System.out.println("4. Search Student");
			System.out.println("5. Count Students");
			System.out.println("6. End");
			System.out.println("-----------------------------------------");
			
		System.out.println("Enter the Choice");
		 choice=sc.nextInt();
		
		
		switch(choice) {
		
		case 1:
			System.out.println("How many Student you want to add");
			int n =sc.nextInt();
			
			System.out.println("Add Students by their ID");
			
			for(int i=0;i<n;i++) {
			    int ID =sc.nextInt();
			    q.add(ID);
			}
			
				System.out.println(q);
				break;
				
		case 2:	
						
			if(q.isEmpty()) {
				System.out.println("No student present");
			}
			else
			{
		     int stud=q.remove();
			System.out.println("Student "+ stud +" Assignment is Submitted.");
			}
			  break;
			  
		case 3:
			if(q.isEmpty()) {
				System.out.println("No student present");
			}
			
			else
				System.out.println(q);
			
			break;
			
		case 4:
			if(q.isEmpty()) {
				System.out.println("No student present");
			}
			else
			{
				System.out.println(" Enter Student ID: ");
				int ID=sc.nextInt();
				System.out.println(q.contains(ID));
			    
			}
			break;
			
		case 5: 
			System.out.println("Current number of students : "+q.size());
			break;
			
		case 6:
			System.out.println("Program End");
			break;
		}
		/////////////////////
		}
		while(choice!=6);
		sc.close();
	}

}
