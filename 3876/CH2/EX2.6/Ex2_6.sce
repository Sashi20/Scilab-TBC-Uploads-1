//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
P= 23.8 //pressure in mm
V= 0.5 //volume in litres
R= 0.0821 //gas constant in lit atm mole^-1
T= 25 //temperature in Celsius

//CALCULATIONS
P1= 760-P
n= P1*V/(760*R*(273+T))
V1= V*1000*P1*273/(760*(T+273))

//RESULTS
mprintf("Volume of oxygen =%.f ml",V1)
