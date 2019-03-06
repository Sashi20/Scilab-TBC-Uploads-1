//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
T= 25 //temperature in Celsius
H_CO2= -94.05 //kcal - enthalpy
H_CO= -26.40 //kcal - enthalpy
S1= 51.06 //cal per degree
S2= -47.3 //cal per degree
S3= -24.5 //cal per degree

//CALCULATIONS
dH= (H_CO2-H_CO)*1000
dS= S1+S2+S3
dF= dH-(273+T)*dS

//RESULTS
mprintf("Value of F = %.0f cal",dF)

//The difference in the solution compared to textbook is due to round off error:
//dS is being taken as -20.7 in the textbook whereas it is being calculated as -20.74 in the code
