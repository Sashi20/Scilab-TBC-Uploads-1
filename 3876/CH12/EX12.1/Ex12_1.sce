//Windows 10
// Scilab 6.0.0
//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
H= -771400 //heat of combustion in cal
n= 7 //moles of CO2
n1= 7.5 //moles of O2
T= 25 //temperature in Celsius
R= 2 //cal mole per degree

//CALCULATIONS
E= H-(n-n1)*R*(273+T)

//RESULTS
mprintf("Difference between the heat of combustion = %.0f cal",E)
