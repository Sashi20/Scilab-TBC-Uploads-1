//Windows 10
// Scilab 6.0.0

//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
m= 14 //weight in gms
M= 28 //weight in gms
R= 1.99 // cal per mole per degree
V= 30 //volume in lit
v1= 10 //volume in lit

//CALCULATIONS
S1= (m/M)*R*2.303*log10(V/v1)

//RESULTS
mprintf("Entropy change = %.2f E.U",S1)
