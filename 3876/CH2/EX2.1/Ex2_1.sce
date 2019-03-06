//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
P= 730 //pressure in mm
V= 20 //volume in litres
T= -20 //temperature in Celsius
P1= 760 //pressure in mm
T1= 0 //temperature in Celsius

//CALCULATIONS
V1= P*V*(273+T1)/((273+T)*760)

//RESULTS
mprintf("Volume at STP =%.1f litres",V1)
