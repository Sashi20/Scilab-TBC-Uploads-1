// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-5
//Refer Fig.12-8
//Given
E=12;  // in V
I=50; // in mA

//Computations
P=E*I/1000; //in W

printf("The power dissipated by potentiometer, P = %.2f W.",P)
