
public class Employee {
	
	String name;
	int yearofJoining;
	double salary;
	String address;
	
	Employee(String name,int yearofJoining,double salary, String address){
		this.name=name;
		this.yearofJoining=yearofJoining;
		this.salary=salary; 
	    this.address=address;
	    
	}
	     void display() {
	    System.out.println(name +"\t"+yearofJoining+"\t"+salary+"\t"+address);
	    
	    
	}
	

	public static void main(String[] args) {
		
		Employee e1=new Employee("haider",2025,4565215,"up");
		Employee e2=new Employee("om",2026,665215,"mp");
		Employee e3=new Employee("raj",2027,4000215,"bombay");
		
		System.out.println("Name\tYear\tsalary\taddress");
		
		e1.display();
		e2.display();
		e3.display();
		
	}

}
