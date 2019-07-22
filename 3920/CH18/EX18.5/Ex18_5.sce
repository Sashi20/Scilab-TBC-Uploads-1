// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 18-5
//Given
t_half=100; //half-life, days
t=365; //time for which intensity is to be found, days

//Computations
n=t/t_half; //number of half-lives elapsed
x_365_by_x_0=(1/2)^n;  //x_365/x_0

printf("The intensity after 365 days, x_365 = %.4f x_0.",x_365_by_x_0)
