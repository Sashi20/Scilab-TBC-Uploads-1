// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 19-6
//Given
m=100; //magnification
f_e=20.0; //focal length of eye piece, mm

//Computations
f_o=m*f_e; //in mm

printf("The focal length of the objective, f_o = %d mm = %.2f m.",f_o, f_o/1000) //The answer given in book in mm is wrong. It should be 2,000 instead of 1,000.
