//Windows 10
// Scilab 6.0.0
//Chapter 11 Thermodynamics Some Basic Concepts

clc;
clear;

//Initialisation of Variables
m= 64 //weight in gms
M= 32 //weight in gms
T= 100 //temperature in Celsius
T1= 0 //temperature in Celsius
cp= 7.05 //cal per mole per degree - avg heat capacity
cp1= 5.06 //cal per mole per degree - avg heat capacity

//CALCULATIONS
H= cp*(m/M)*(T-T1)
E= cp1*(m/M)*(T-T1)

//RESULTS
mprintf("Value of dH= %.0f cal",H)
mprintf("\nValue of dE= %.0f ca;",E)
