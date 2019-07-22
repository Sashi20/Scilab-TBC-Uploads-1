// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-8
//Given
m=200;  //mass, kg
a_g=9.8;  //Acceleration due to gravity, m/s^2
q=2.50; //distance lifted, m
t=7.00; //time, s

//Computations
P=m*a_g*q/t; //Power, W

printf("The power required, P = %.0f W.",P)
