//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
F1= -94260 //cal free energy of formation
F2= -56690 //cal free energy of formation
F3= -7860 //cal free energy of formation

//CALCULATIONS
F= 2*F1+3*F2-F3

//RESULTS
mprintf("Value of dF = %.2f",F)
