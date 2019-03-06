//Windows 10
// Scilab 6.0.0
//Chapter 5 Solutions Osmotic Pressure

clc;
clear;

//Initialisation of Variables
T= -0.2 //temperature in Celsius
T1= 25 //temperature in Celsius
T2= 1.86 //temperature in Celsius
R= 0.082 //gas constant li-atm per mole per degree

//CALCULATIONS
P= -T*R*(T1+273)/T2

//RESULTS
mprintf("Osmotic pressure= %.2f atm",P)
