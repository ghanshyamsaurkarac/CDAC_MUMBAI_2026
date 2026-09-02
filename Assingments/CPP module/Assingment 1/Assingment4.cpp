
#include <iostream>
using namespace std;

int main4(int argc, char* argv[]){

    if(argc < 4){

        cout<<"Usage : ./sensor_monitor <warn_threshold> <critical_threshold> <num_readings>"<<endl;
        cout<<"Error : Missing arguments."<<endl;

        return 1;
    }

    double warn_temp=(double)stoi(argv[1]);
    double critical_temp=(double)stoi(argv[2]);
    int n=stoi(argv[3]);

    if(warn_temp>critical_temp){

        cout<<"INVALID TEMP"<<endl;

        return 1;
    }

    if(n<1 || n>500){

        cout<<"INVALID READINGS"<<endl;

        return 1;
    }

    cout<<"Config : "
        <<"Warn="<<warn_temp<<"°C "
        <<"Critical="<<critical_temp<<"°C "
        <<"Readings="<<n<<endl;

    int normal_cnt=0, warning_cnt=0, critical_cnt=0, shutdown_cnt=0;

    while(n--){

        double temperature=rand()%70;

        if(temperature < warn_temp){

            normal_cnt +=1;

        }
        else if(temperature < critical_temp){

            warning_cnt +=1;

        }
        else if(temperature <= 59){

            critical_cnt +=1;

        }
        else{

            shutdown_cnt +=1;

        }
    }

    cout<<"Results : "
        <<"Normal:"<<normal_cnt<<"  "
        <<"Warning:"<<warning_cnt<<"  "
        <<"Critical:"<<critical_cnt<<"  "
        <<"Shutdown:"<<shutdown_cnt<<endl;

    return 0;
}
