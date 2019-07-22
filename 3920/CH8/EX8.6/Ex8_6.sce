// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-6
//Refer Fig.8-4
//Given
m=1.0;  //mass, kg
a_g=9.8;  //Acceleration due to gravity, m/s^2
q=4.0; //distance raised, m

//Computations
F=m*a_g; // Force, kg-m/s^2
E_k=F*q;   //Kinetic Energy, kg-m^2/s^2 (J)

printf("The kinetic energy, E_k = %.0f J.",E_k)
