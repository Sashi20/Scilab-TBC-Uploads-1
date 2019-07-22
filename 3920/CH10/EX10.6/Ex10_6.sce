// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 10-6
//Given
d_m=1000; //mass density of water, kg.m^3
a=10.000; //edge length of cube, cm
d=1.00; //depth of water, m

g=9.81; //in m/s^2

//Computations
F=(d_m*g*d)*(6*(a/100)^2); //Force, N

printf("The force on the cube, F = %.0f N.",F)
