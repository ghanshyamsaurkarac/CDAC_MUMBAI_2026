
public class SecondLargest {

	public static void main(String[] args) {
		
		int arr[]= {12, 5, 8, 20, 15, 20, 7};
		
//		int min=arr[0];
		int max=arr[0];
		int secondlargest = 0;
		
		for(int i=1;i<arr.length;i++) {
			
			if(max<arr[i]) {
				secondlargest=max;
				max=arr[i];
			}
			
			else if(arr[i]>secondlargest && arr[i] != max)
				secondlargest=arr[i];
				
			
			
		}
		System.out.println("Second Largest ="+secondlargest);
	}

}
