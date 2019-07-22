// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 11-1
//Given
m=3.00; //mass, g
E=5.0000; //energy supplied, cal
t=1.1234; //increase in temperature, degree C

//Computations
c=E/(m*t); //specific heat, cal/g/degree C

printf("The specific heat of the substance is %.2f cal/g/degree-Celsius.",c)
