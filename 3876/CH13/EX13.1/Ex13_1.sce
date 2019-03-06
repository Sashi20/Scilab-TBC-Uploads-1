//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
H= 540 //cal per gram - heat of vaporization
m= 9 //weight in gms
T= 100 //temperature in Celsius

//CALCULATIONS
S= H*m/(273+T)

//RESULTS
mprintf("Entropy change = %.2f E.U",S)
