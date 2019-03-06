//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
F1= 31350 //cal - free energy of formation
F2= 26224 //cal - free energy of formation
F= 96500 //charge in coloumbs

//CALCULATIONS
F3= -F1+F2
E= F3*4.184/F

//RESULTS
mprintf("Value of E = %.4f cal",E)
