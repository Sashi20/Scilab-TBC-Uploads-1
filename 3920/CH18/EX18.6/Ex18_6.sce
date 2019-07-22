// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 18-6
//Refer Problem 18-5
//Given
t_half=100; //half-life, days

//Computations
lambda=0.69315/(t_half*24*60*60); //decay constant, per sec

printf("The decay constant, lambda = %.2E s^-1.",lambda)
