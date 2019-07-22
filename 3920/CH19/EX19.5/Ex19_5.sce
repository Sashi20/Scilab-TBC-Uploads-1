// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 19-5
//Given
D=15.0; //diameter of objective of larger telescope, cm
d=6.00; //diameter of obective of smaller telescope, cm

//Computations
k=D/d; //ratio of objective's diameters

printf("The larger telescope gathers %.2f times, or %d percent as much light as the smaller one.",k^2, k^2*100)
