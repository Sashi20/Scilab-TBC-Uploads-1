// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 10-4
//Given
m=300; //mass, kg
v=0.275;  //volume, m^3

//Computations
d_m=m/v; //mass density, kg/m^3

printf("The mass density, d_m = %.0f kg/m^3.",d_m)  //The answer vary due to round off error/significant figures.
