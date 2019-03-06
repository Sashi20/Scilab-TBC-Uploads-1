//Windows 10
// Scilab 6.0.0

//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
V= 0.5 //volume in litres
T= 50 //temperature in Celsius
n= 1 //no of moles
R= 0.0821 //gas constant in lit atm mole^-1
a= 4.28*10**-2 //Van der Waals equation a in litres mole^-1
b= 3.6 //Van der Waals equation b in arm mole^-2 lit^2

//CALCULATIONS
P= n*R*(273+T)/V
P1= (n*R*(T+273)/(V-n*a))-(b/V**2)

//RESULTS
mprintf("Pressure = %.0f atm",P)
mprintf("\nPressure using van der Waals equation= %.1f atm",P1)
