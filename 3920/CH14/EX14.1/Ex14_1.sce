// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 14-1
//Given
r=20; //in cm
I=400; // in mA

//Computations
B=2*10^-7*(I/1000)/(r/100); //in tesla(T)

printf("The flux density, B = %.1E T.",B)
