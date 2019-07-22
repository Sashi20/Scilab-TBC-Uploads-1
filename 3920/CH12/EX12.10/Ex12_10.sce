// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-10
//Refer Problem 12-9
//Given
E=12; // in V
R_n=120; //value of each resistors, ohms
n=12; //number of resistors

//Computations
I_n=E/R_n; //in A

printf("The ammeter reading, I_n = %.2f A.",I_n)
