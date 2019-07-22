// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-9
//Given
X_C=-100; //capacitor's reactance, ohms
f=10.0; //frequency, MHz

//Computations
C=-1/(2*%pi*f*X_C); //in muF

printf("The capacitance, C = %.6f muF(microfarads) = %.0f pF.",C,C*10^6)
