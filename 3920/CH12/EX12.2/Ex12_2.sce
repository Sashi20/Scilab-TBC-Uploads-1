// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-2
//Refer Fig.12-8
//Given
R=10.0; //Resistance, k-ohm
E=100; //in volts(V)

//Computations
I=E/(R*1000); // in A

printf("The current, I = %.4f A.",I)
