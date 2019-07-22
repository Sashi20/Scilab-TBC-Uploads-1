// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-5
//Refer Fig.8-4
//Given
m=5.004;  //mass, kg
a_g=9.8067;  //Acceleration due to gravity, m/s^2
q=3.00; //distance lifted, m

//Computations
F=m*a_g; // Force, kg-m/s^2
E_p=F*q;   //Potential Energy, J

printf("The potential energy, E_p = %.1f J.",E_p)
