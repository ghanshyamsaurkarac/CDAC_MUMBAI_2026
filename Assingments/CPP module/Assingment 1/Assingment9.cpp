/*
 * Assingment9.cpp
 */

#include <iostream>
#include <cmath>
using namespace std;

inline double distanceBetween(double x1, double y1, double x2, double y2){
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

inline double toRadians(double degrees){
    return degrees * (M_PI / 180.0);
}

inline double clamp(double value, double minVal, double maxVal){
    if(value < minVal) return minVal;
    if(value > maxVal) return maxVal;
    return value;
}

inline bool isInSafeZone(double x, double y, double cx, double cy, double radius){
    return distanceBetween(x, y, cx, cy) <= radius;
}

int main9(){

    double homeX = 0.0, homeY = 0.0;
    double radius = 50.0;

    double wx[3] = {10.0, 30.0, 60.0};
    double wy[3] = {20.0, 40.0, 10.0};

    for(int i = 0; i < 3; i++){
        double dist = distanceBetween(homeX, homeY, wx[i], wy[i]);
        bool safe = isInSafeZone(wx[i], wy[i], homeX, homeY, radius);

        cout << "Waypoint " << (i+1) << ": (" << wx[i] << ", " << wy[i] << ")" << endl;
        cout << "Distance from home: " << dist << endl;
        cout << "Inside safe zone: " << (safe ? "Yes" : "No") << endl;
        cout << endl;
    }

    return 0;
}


