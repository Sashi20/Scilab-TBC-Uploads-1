//Example 2.3, Page Number 23
//Kirchhoff’s Voltage Law
clc;

//Inputs
Vin=10          //Input voltage in volts
Res=1000              //Resistance in ohms

//Outputs
//By Kirchhoff's Voltage Law
Vr=Vin               //Load Voltage across the load resistance in volts
//By ohms law
I=(Vr)/(Res)        //Load current flowing through load resistance in amperes

//Results
mprintf("Load current flowing through load resistance: %.5f ampere\n",I);

//Outputs
// Load current flowing through load resistance: 0.01000 ampere (or) 10mA.

