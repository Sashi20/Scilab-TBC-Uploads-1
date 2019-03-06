//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
P= 752 //pressure in mm
V= 0.2 //volume in litres
T= 21 //temperature in Celsius
R= 0.0821 //gas constant in lit atm mole^-1
m= 0.980 //chloroform in gms

//CALCULATIONS
M= m*R*(T+273)*760/(V*P)

//RESULTS
mprintf("Molecular Weight of Chloroform = %.1f gms per mole",M)
