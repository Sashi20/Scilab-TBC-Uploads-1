//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
N= 6.02*10**23 //Avogadro constant for molecules
R= 0.0821 //gas constant in lit atm mole^-1
V= 20 //volume in lit
P= 730 //pressure in mm of Hg
T= -20 //temperature in Celsius

//CALCULATIONS
M= N*P*V/(760*R*(273+T))

//RESULTS
mprintf("Molecules =%.2e molecules",M)
