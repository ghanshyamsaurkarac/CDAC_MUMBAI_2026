import java.sql.Date;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.Predicate;

public class Program {

	public static void main(String[] args) {

		//Q1.Lambda expression to sort a string array in alphabetical order.
		String [] name= {"Om","Raj","Anu","Dip"};
		
		Comparator<String> sortName = (a, b) -> a.compareTo(b);

		Arrays.sort(name, sortName);

		System.out.println("Q1. " +Arrays.toString(name));

//			Q2.Lambda expression to find the largest number in an integer array.
			int[] num= {44,65,82,64,92,69};
			Function<int[],Integer> largestNum = arr->{
			                                   int max= num[0];
			                                   for(int n: num) {
			                                	 if(n>max)
			                                	   max=n;
			                                   }
			                                   
                                                 return max;          
                                          };
			System.out.println("Q2. "+largestNum.apply(num));
			
			
//			Q3.Lambda expression to find the smallest number in an integer array.
			Function<int[],Integer> Small=(arr1)->{
			                                        int min=num[0];
			                                        for(int s: num) {
			                                        	if(s<min)
			                                        	     min= s;
			                                        }
			                                        return min;
			                                      };
			System.out.println("Q3. "+Small.apply(num));
			
//			Q4.Lambda expression to generate a 3 digit random number.
			Supplier<Double> randomVal= () ->{
				                          return Math.random();
			                               };
			     System.out.println("Q4. "+ randomVal.get());   
			     
//		Q6.Lambda expression to print the current date.
			Supplier<Date> CurrentDate=() -> new Date(0);
			
			System.out.println("Q6. "+ CurrentDate.get());  
			
//		Q7.	Lambda expression to evaluate if a number entered is a Even number.
			Predicate<Integer> prime =(n)->{
			                              if(n % 2==0)
				                            return true;
			                             else
			                             	return false;
			                              };
			                              
			System.out.println("Q7. "+prime.test(6));                             
			     
	}

}
