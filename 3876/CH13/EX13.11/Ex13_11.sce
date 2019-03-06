//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
F= -51108 //cal - free energy of formation
f= 96500 //charge in coloumbs
n= 2 //moles

//CALCULATIONS
E= -F*4.184/(n*f)

//RESULTS
mprintf("Value of E = %.3f v",E)
