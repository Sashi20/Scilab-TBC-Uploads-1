// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-6
//Refer Fig.12-9
///Given
R1=112; //in ohm
R2=470; //in ohm
R3=680; //in ohm

//Computations
R=R1+R2+R3; //in ohm

printf("The total resistance of the series combination is %.0f ohms.",R) //The answer may vary due to round-off errors/significant figures.
