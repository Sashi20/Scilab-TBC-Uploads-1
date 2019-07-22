// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-4
//Given
C1=0.10; // in muF
C2=0.050; // in muF

//Computations
C=1/((1/C1)+(1/C2)); // in muF

printf("The total capacitance, C = %.3f muF (microfarads).",C)
