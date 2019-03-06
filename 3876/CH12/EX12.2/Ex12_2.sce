//Windows 10
// Scilab 6.0.0
//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
H= -94.052 //kcal  heat of combustion
H1= -68.317 //kcal  heat of combustion
H2= -780.98 //kcal  heat of combustion

//CALCULATIONS
H3= 6*H+3*H1-H2

//RESULTS
mprintf("Heat of formation = %.3f kcal",H3)

//The difference in the solution compared to textbook is due to round off error
