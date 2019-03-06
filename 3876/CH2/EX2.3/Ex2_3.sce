//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
P= 100 //pressure in cm
m= 2*10**20 //molecules of nitrogen
N= 6*10**23 //Avogadro constant for molecules
R= 0.0821 //gas constant in lit atm mole^-1
T= 27 //temperature in Celsius

//CALCULATIONS
V= m*R*(T+273)*760*100/(N*P)

//RESULTS
mprintf("Volume = %.2f cm^3",V)
