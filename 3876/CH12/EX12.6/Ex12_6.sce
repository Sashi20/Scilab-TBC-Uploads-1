//Windows 10
// Scilab 6.0.0

//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
Cp= 2.7 //cal per mole per degree  - heat capacity
CP1= 6.9 //cal per mole per degree  - heat capacity
Cp2= 15.4 //cal per mole per degree - heat capacity
dH_25= -20.24 //kcal  - heat of formation
T= 200 //temperature in Celsius
T1= 25 //temperature in Celsius

//CALCULATIONS
dH_200= dH_25+(Cp2-2*Cp-3*CP1)*((T-T1)/1000)

//RESULTS
mprintf("Heat of formation= %.2f kcal",dH_200)
