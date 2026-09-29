
 class Member {

	String Name;	
	int Age;
	String Phone_number;
	String Address;
	Float Salary;
	
	public void printSalary() {
		System.out.println("Salary : "+Salary);
	}
	
}

public class Q2 {
	public static void main(String args[]) {
		
		/// first one
		Member m=new Member();
		
		System.out.println("Enter the Name");
		m.Name=ConsoleInput.getString();
		System.out.println("Enter the Age");
		m.Age=ConsoleInput.getInt();
		System.out.println("Enter the Phone Number");
		m.Phone_number=ConsoleInput.getString();
		System.out.println("Enter the Address");
		m.Address=ConsoleInput.getString();
		System.out.println("Enter the Salary");
		m.Salary=ConsoleInput.getFloat();
		
		
		System.out.println("Name : " +m.Name);
		System.out.println("Age : " + m.Age);
		System.out.println("Phone Number : " +m.Phone_number);
		System.out.println("Address : "+m.Address);
		System.out.println("Salary : "+m.Salary);
		
		// 2nd one
		
		PrimeMembers pm=new PrimeMembers();
		
		pm.setJoiningYear(2021);
		pm.setJoiningFees(1320.0f);
		pm.setActive(true);
		
		System.out.println("====================================");
		
		System.out.println("Joining Year : "+pm.getJoiningYear());
		System.out.println("Joining Fees : "+pm.getJoiningFees());
		System.out.println("Status : "+pm.getisActive());
		
		
		
	}
}