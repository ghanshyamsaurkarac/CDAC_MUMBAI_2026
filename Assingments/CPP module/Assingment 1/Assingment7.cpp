/*
 * Assingment7.cpp
 */


#include <iostream>
using namespace std;

int main7() {
	int statusReg = 0b10110001; // Read-only from firmware side
	int controlReg = 0b00000000; // Firmware writes here
	int dataReg = 0b11001010; // For reassignment demo

	const int* regPtr1 = &statusReg;
	cout<<"Value of statusReg: "<<statusReg<<endl;
	cout<<"Value of regPtr1 (holds address of statusReg): "<<regPtr1<<endl;
	//*regPtr1 = 10; can't write here statusReg is meant to be read-only

//	regPtr1 = &dataReg; //this would actually work pointer isn't locked

	cout<<endl;
	cout<<endl;

	int* const regPtr2 = &controlReg;
	cout<<"Value of regPtr2 (holds address of controlReg): "<<regPtr2<<endl;
	cout<<"Value of controlReg: "<<controlReg<<endl;
	*regPtr2 = 10; //fine we're allowed to write to controlReg
	cout<<"Value of changed controlReg: "<<controlReg<<endl;
//	regPtr2 = &dataReg; //nope pointer is locked to controlReg forever

	cout<<endl;
	cout<<endl;

	const int* const regPtr3 = &statusReg;
	cout<<"Value of regPtr3 (holds address of statusReg): "<<regPtr3<<endl;
	cout<<"Value of statusReg via regPtr3: "<<*regPtr3<<endl;
//	*regPtr3 = 10; can't touch the value
//	regPtr3 = &dataReg; can't move the pointer either totally locked down

	return 0;
}


