// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-5
//Given
C1=0.0010; // in muF
C2=100; // in pF

//Computations
C=1/((1/C1)+(1/(C2*10^-6))); // in muF

printf("The total capacitance, C = %.6f muF (microfarads) or %.0f pF.",C,C*10^6)
