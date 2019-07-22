// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 14-4
//Given
B_c=0.500; //magnetic flux with current, T
B_nc=500; //magnetic flux with no current, G

//Computations
B_r=B_nc/(B_c*10^4)*100; //retentivity, in percent

printf("The retentivity of the core material, B_r = %.1f percent.",B_r)
