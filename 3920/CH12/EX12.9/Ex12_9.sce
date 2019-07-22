// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-9
//Refer Fig. 12-12
//Given
E=12; // in V
R_n=120; //value of each resistors, ohms
n=12; //number of resistors

//Computations
R=R_n/n; //in ohms
I=E/R; //in A

printf("The total current drawn from the battery, I = %.1f A.",I)
