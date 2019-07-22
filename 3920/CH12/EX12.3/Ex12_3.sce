// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-3
//Refer Fig.12-8
//Given
R=100;  //in ohm
I=10.0; //in mA

//Computations
E=(I/1000)*R; //in V

printf("The dc voltage, E = %.2f V.",E)
