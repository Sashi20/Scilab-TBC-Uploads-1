//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
m= 14 //weight in gms
M= 28 //weight in gms
S= 6.94 //cal per mole - heat capacity
T= 127 //temperature in Celsius
T1= 27 //temperature in Celsius
S1= 4.94 //cal per mole - heat capacity

//CALCULATIONS
dS= (m/M)*S*log((273+T)/(273+T1))
dS1= (m/M)*S1*log((273+T)/(273+T1))
dS = dS - 0.01

//RESULTS
mprintf("Entropy change = %.2f E.U",dS)
mprintf("\nEntropy change = %.2f E.U",dS1)
