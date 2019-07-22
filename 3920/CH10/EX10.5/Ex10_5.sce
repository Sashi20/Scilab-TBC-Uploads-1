// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 10-5
//Refer Problem 10-4
//Given
g=9.81; //in m/s^2
m=300; //in kg
v=0.275; //in m^3

//Computations
d_w=(m/v)*g; //weight density, N/m^3

printf("The weight density, d_w = %.2E N/m^3.",d_w)
