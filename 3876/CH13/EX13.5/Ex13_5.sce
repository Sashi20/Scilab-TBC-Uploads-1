//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
Scl= 53.29 //standard entropy of formation E.U
Sag= 10.21 //standard entropy of formation E.U
Sagcl= 22.97 //standard entropy of formation E.U

//CALCULATIONS
dS= Sagcl-Sag-0.5*Scl

//RESULTS
mprintf("Entropy change = %.2f E.U",dS)
