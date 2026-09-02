/*
 * Assingment2.cpp
*/


#include<iostream>
#include<algorithm>
using namespace std;

int main2(){

	int n;
	cout<<"Enter the no."<<endl;
	cin>>n;

	cout<<"Enter the reading"<<endl;

	double arr[100];
	int ecount=0;          // error count
    int vcount=0;         // valid count of array elememts


	for(int i=0;i<n;i++){
		cin>>arr[i];
	}

	cout<<"Readings entered  : "<<n<<endl;


	cout<<"Valid readings    : ";
	for(int i=0;i<n;i++){
		if(arr[i]<0){
		ecount += 1;
		continue;
	}
		cout<<arr[i]<<" ";
		vcount +=1;
 }


	cout<<endl;


	cout<<"Skipped (errors)  : "<<ecount<<endl;

	for(int i=0;i<n;i++){
		if(arr[i]>45){
   cout<<"First CRITICAL    : "<<"Index "<<i<<" -> "<<arr[i]<<"°C"<<endl;
		break;
	}
 }

	double Min=arr[0],Max=arr[0],Avg;
	int sum=0;

  for(int i=0;i<n;i++){

	  if(arr[i]<0){
	  	continue;
	 }

	  sum +=arr[i];
	Min=min(Min,arr[i]);
	Max=max(Max,arr[i]);

  }

      Avg=sum/vcount;

  cout<<"Min : "<<Min<<"°C  "<<"Max : "<<Max<<"°C  "<<"Avg : "<<Avg<<"°C"<<endl;


  int Ncount=0,Wcount=0,Ccount=0,Scount=0;

  for(int i=0;i<n;i++){

	  if (arr[i]<0)
		  continue;

	  if(arr[i]<25)
	    Ncount +=1;

	  else if(25<arr[i] && arr[i]<45)
	   Wcount +=1;

	  else if(45<arr[i])
	  Ccount +=1;

	  else
		  Scount +=1;


  }
    cout<<"Normal:"<<Ncount<<"   Warning:"<<Wcount<<"   Critical:"<<Ccount<<"   Shutdown:"<<Scount<<endl;

    return 0;
}
