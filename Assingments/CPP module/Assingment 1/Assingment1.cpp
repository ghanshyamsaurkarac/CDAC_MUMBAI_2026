//Requirements:
//Store the reading as double, derive a status code as int using if-else
//Use switch on the status code to print the action
//Use the ternary operator to print Above Average or Below Average relative to 25°C (normal
//operating temperature)
//Print the temperature in Fahrenheit as well: F = (C × 9 / 5) + 32

#include <iostream>
using namespace std;

int main1() {

	double C,F;

	 cout<<"Enter the temperature"<<endl;
	  cin>>C;
	 F = (C * 9 / 5) + 32;
	 cout<<"Temperature : "<<C<<"°C  /  "<<F<<"°F" <<endl;

	 int StatusCode;

	 if(C<0)
	 {
		 StatusCode=-1;
		 cout<<"Status : SENSOR_ERROR"<<endl;
	 }

	 else if(C>0&& C<29)
	 {
			 StatusCode=0;
			 cout<<"Status : NORMAL"<<endl;
		 }
	 else if (C>30&& C<44)
		 {
				 StatusCode=1;
				 cout<<"Status : WARNING"<<endl;
			 }
	 else if (C>45 && C<59)
	 		 {
	 				 StatusCode=2;
	 				 cout<<"Status : CRITICAL"<<endl;
	 			 }
	 else
		 		 {
		 				 StatusCode=3;
		 				 cout<<"Status : SHUTDOWN"<<endl;
		 			 }

	  switch(StatusCode){

	  case -1:

		   cout<<"Action : Sensor fault — check wiring"<<endl;
		          break;

	  case 0:
	  		  cout<<"Action : No action required"<<endl;
	  		          break;

	  case 1:
	  		  cout<<"Action : Alert sent to supervisor"<<endl;
	  		          break;

	  case 2:
	  		  cout<<"Action : Cooling system triggered"<<endl;
	  		          break;

	  case 3:
	  		  cout<<"Action : Emergency shutdown initiated"<<endl;
	  		          break;
	  }

	  string R = (C>25)?"Above Average":"Below Average";
	   cout<<"Reading : "<<R<<endl;

	return 0;
}
