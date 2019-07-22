// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 14-2
//Refer Example 14-1
//Given
r=20; //in cm
I=400; // in mA

//Computations
B=2*10^-7*(I/1000)/(r/100); //in tesla(T)
B_gauss=B*10^4; // in G

printf("The flux density, B_gauss = %.1E G.",B_gauss)
