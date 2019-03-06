//Windows 10
// Scilab 6.0.0
//Chapter 11 Thermodynamics Some Basic Concepts

clc;
clear;

//Initialisation of Variables
n= 2 //moles
R= 1.99 //cal per mole per degree
T= 80 //temperature in Celsius
H1= 94.3 //cal per gram - heat of vaporization
M= 78 //weight of benzene in gms per mole

//CALCULATIONS
w= n*R*(273+T)
H= n*M*H1
E= H-w

//RESULTS
mprintf("Value of dH= %.0f cal",H)
mprintf("\nValue of dE= %.0f cal",E)
