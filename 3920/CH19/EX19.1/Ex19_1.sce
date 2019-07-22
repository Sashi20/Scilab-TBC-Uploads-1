// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 19-1
//Given
r_m=1.50; //refractive index of the medium

//Data assumed
c=3.00*10^5; //speed of light in vaccum, km/s

//Computations
c_m=c/r_m; //speed of light in medium, km/s

printf("The speed of yellow light in the medium, c_m = %.2E km/s.",c_m)
