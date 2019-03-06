//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
R= 8.31*10**7 //universal gas constant in ergs mole^-1
T= 27 //temperature in Celsius
M= 28 //weight in gram per mole

//CALCULATIONS
c= sqrt(3*R*(273+T)/M)

//RESULTS
mprintf("Root-Mean-Square Velocity = %.2e cm per sec",c)
