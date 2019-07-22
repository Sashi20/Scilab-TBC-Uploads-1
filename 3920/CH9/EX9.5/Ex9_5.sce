// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 9-5
//Refer Problem 9-4
//Given
P=100; //Power of the bulb, W
E=1.80*10^17;  //Energy calculated in Problem 9-4, J

//Computations
t_s=E/P; //time, s
t_yr=t_s/(60*60*24*365.25); //time, years


printf("The light bulb burns %.2E yr.",t_yr)
