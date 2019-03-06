//Windows 10
// Scilab 6.0.0

//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
H= -66.36 //kcal   heat of combustion
H1= 12.5 //k cal   heat of combustion
H2= -68.317 //kcal  heat of combustion

//CALCULATIONS
H3= H-H1-H2

//RESULTS
mprintf("Heat of reaction= %.2f kcal",H3)
