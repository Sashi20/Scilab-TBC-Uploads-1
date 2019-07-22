// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-4
//Refer Fig.8-4
//Given
m=1.0;  //mass, kg
a_g=9.8;  //Acceleration due to gravity, m/s^2
q=1.5; //distance lifted, m

//Computations
F=m*a_g; // Force, kg-m/s^2
w=F*q;   //Work, kg-m^2/s^2

printf("The work done = %.0f kg-m^2/s^2.",w)
