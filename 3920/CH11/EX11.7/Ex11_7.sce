// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 11-7
//Given
m=67.5; //mass, g
h_v=845; //heat of vaporization in cal/g

//Computations
h=h_v*m; //in cal

printf("The required heat, h = %.2E cal = %.1f kcal.",h, h/1000)
