//Windows 10
// Scilab 6.0.0
//Chapter 5 Solutions Osmotic Pressure

clc;
clear;

//Initialisation of Variables
T= 20 ////temperature in Celsius
R= 0.082 //gas constant in li-atm per mole per degree
V= 2 //volume in lit
m= 6 //weight in gms
M= 60 //weight in gms

//CALCULATIONS
P= m*R*(273+T)/(M*V)

//RESULTS
mprintf("Osmotic pressure= %.1f atm",P)
