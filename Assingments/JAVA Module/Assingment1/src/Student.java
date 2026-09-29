public class Student {

    String name;
    int rollno;
    String phone, address;

    public Student() {

    }

    /// setter
    public void setrollno(int rn) {
        rollno = rn;
    }

    public void setname(String s) {
        name = s;
    }
    
    public void setphone(String ph) {
    	phone=ph;
    }
    
    public void setaddress(String ad) {
    	address=ad;
    }
 
    ////    Getter
    public int getrollno() {
        return rollno;
    }

    public String getname() {
        return name;
    }
    
    public String getphone() {
    	return phone;
    }
    
    public String getaddress() {
       return address;
    }
    
   //  main method
    public static void main(String args[]) {

        Student stud = new Student();
        Student stud1=new  Student();

        stud.setname("John");
        stud.setrollno(2);
        stud.setphone("9921450092");
        stud.setaddress("Ravi nagar");

        
        System.out.println("Name " + stud.getname());
        System.out.println("Roll No " + stud.getrollno());
        System.out.println("Phone " + stud.getphone());
        System.out.println("Adderss " + stud.getaddress());
        
        stud1.setname("Sam");
        stud1.setrollno(3);
        stud1.setphone("1234567891");
        stud1.setaddress("viman nagar");
        
        System.out.println("Name " + stud1.getname());
        System.out.println("Roll No " + stud1.getrollno());
        System.out.println("Phone " + stud1.getphone());
        System.out.println("Address " + stud1.getaddress());
        
        
    }
}