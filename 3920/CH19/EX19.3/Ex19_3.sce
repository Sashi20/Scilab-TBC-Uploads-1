// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 19-3
//Refer Problem 19-2
//Given
r=1.33; //refractive index of water
s=1.00; //refractive index of air

//Computations
x_c=asind(s/r); //critical angle, degrees

printf("The critical angle, x_c = %.1f degrees.",x_c)
