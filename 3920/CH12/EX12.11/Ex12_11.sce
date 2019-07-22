// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-11
//Given
E=150; //supply voltage, V
R1=330; //in ohm
R2=680; //in ohm
R3=910; //in ohm

//Computations
R=R1+R2+R3; //Total resistance of the series combination, ohms
I=E/R;
P2=I^2*R2; //in W

printf("The power dissipated by R2, P2 = %.2f W.",P2)
