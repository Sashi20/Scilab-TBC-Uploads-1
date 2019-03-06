//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
m= 9 //weight in gms
H= 79.7 //cal per gram - heat of fusion
T= 0 //temperature in Celsius

//CALCULATIONS
S= m*H/(273+T)

//RESULTS
mprintf("Entropy change = %.2f E.U",S)
