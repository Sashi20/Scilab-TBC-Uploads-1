//Windows 10
// Scilab 6.0.0
//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
H= -94.052 //kcal   heat of combustion
H1= -68.32 //kcal   heat of combustion
H2= 11.718 //kcal  heat of combustion

//CALCULATIONS
H3= 6*H+3*H1-H2

//RESULTS
mprintf("Heat of combustion of benzene = %.0f cal",H3)
