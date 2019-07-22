// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-3
//Given
L=10.0; //in mH
f=100; // in kHz

//Computations
x_L=2*%pi*(f*1000)*(L/1000); // reactance, ohms

printf("The reactance, x_L = %.0f ohms or %.2f kilo-ohms.",x_L, x_L/1000)   //The answer may vary due to round-off errors/significant figures.
