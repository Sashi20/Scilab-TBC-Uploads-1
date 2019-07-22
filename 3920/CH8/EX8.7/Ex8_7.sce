// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-7
//Refer Problem 8-6
//Given
m=1.0;  //mass, kg
a_g=9.8;  //Acceleration due to gravity, m/s^2
q=4.0; //distance lifted, m

//Computations
t=sqrt(2*q/a_g); ///time, s
v_inst= a_g*t; //in m/s
E_k=m*v_inst^2/2

printf("The kinetic energy is %.0f kg-m^2/s^2 (J).",E_k)
