
public class MoveZeros {

	public static void main(String[] args) {
		
		int arr[]= {0, 5, 0, 3, 8, 0, 2};
		int position=0;
		
		for(int i=0;i<arr.length;i++) {
			
			if(arr[i]!=0) {
			arr[position]=arr[i];
			position++;
		
		}
	}
	
          for(int i=position;i<arr.length;i++) {
        	  arr[i]=0;
          }
		
	    for(int i=0;i<arr.length;i++) {
		 System.out.print(arr[i]+" ");
	} 

 }
}
