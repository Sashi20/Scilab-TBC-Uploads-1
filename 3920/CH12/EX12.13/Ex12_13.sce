// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-13
//Refer Fig. 12-13
//Given
R_b=100; //Value of resistance for resistors below Z, ohms
R_a=10.0; //Value of resistance for resistors above Z, ohms
I_100=500; //Current trough each 100-ohm resistor, mA

//Computations
I1=I_100;
I2=I_100;
I_10=(I1+I2)/3; //Current though any one of 10-ohm resistor, mA
E=(I_10/1000)*R_a; //Voltage across any one of 10-ohm resistor, V

printf("The current through any of the 10-ohm resistors = %.0f mA.\n",I_10)
printf("The voltage across any of the 10-ohm resistors = %.2f V.",E)
