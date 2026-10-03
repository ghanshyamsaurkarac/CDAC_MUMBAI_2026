
public class MinMax {

	public static void main(String[] args) {
		
//		Scanner sc =new Scanner(System.in);
		int arr[]= {15,8,23,4,19,7};
		
		int max=arr[0];
		int min=arr[0];
		
		for(int i=1;i<arr.length;i++) {
			
			if(max<arr[i])
				max=arr[i];
			
			if(min>arr[i])
				min=arr[i];
			
		}
		
		System.out.println("Maximum ="+max);
		System.out.println("Minimum ="+min);

	}

}
