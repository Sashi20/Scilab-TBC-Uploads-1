// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-9
//Refer Problem 8-8 and Fig. 8-6
//Given
P_in=800;  //Wattmeter Power reading, W
P_out=700; //Power calculated in Problem 8-8, W

//Computations
Eff= (P_out/P_in)*100; //Efficiency in percent

printf("The Efficiency is %.1f percent.",Eff) //The result may vary due to round off/significant figures.
