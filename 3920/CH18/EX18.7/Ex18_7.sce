// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 18-7
//Refer Problem 18-5
//Given
t_half=100; //half-life, days

//Computations
tau=t_half/0.69315; //mean life, days

printf("The mean life of the substance, tau = %.2E s = approx. %d days.",tau*24*60*60,ceil(tau))
