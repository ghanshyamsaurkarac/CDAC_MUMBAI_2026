

#include <iostream>
#include <algorithm>
using namespace std;

int main3(){

    double grid[3][3];

    cout<<"Enter Grid Values"<<endl;

    for(int i=0;i<3;i++){

        for(int j=0;j<3;j++){

            cin>>grid[i][j];

        }

    }

    double max_temp=INT_MIN;
    int max_floor=-1;
    int max_room=-1;

    double max_average=-1;
    int max_average_floor=-1;

    int warning_cnt=0;

    for(int i=0;i<3;i++){

        double sum=0;

        for(int j=0;j<3;j++){

            if(grid[i][j]>=30)

                warning_cnt +=1;

            sum +=grid[i][j];

            if(grid[i][j]>max_temp){

                max_temp=grid[i][j];
                max_floor=i;
                max_room=j;

            }

        }

        double Avg=sum/3;

        if(Avg>max_average){

            max_average=Avg;
            max_average_floor=i;

        }

    }

    cout<<endl;

    for(int i=0;i<3;i++){

        cout<<"Floor   "<<i+1<<" :  ";

        for(int j=0;j<3;j++){

            cout<<grid[i][j]<<"  ";

        }

        cout<<endl;

    }

    cout<<"Hottest Room  : "<<"Floor "<<max_floor+1<<", Room "<<max_room+1<<" -> "<<max_temp<<"°C"<<endl;

    cout<<"Hottest Floor : "<<"Floor "<<max_average_floor+1<<"  (Avg "<<max_average<<"°C)"<<endl;

    cout<<"Rooms at WARNING or above : "<<warning_cnt<<endl;

    return 0;
}
