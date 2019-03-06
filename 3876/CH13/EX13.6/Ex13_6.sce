//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
Scl= 13.17 //standard entropy of formation E.U
Sag= 17.67 //standard entropy of formation E.U
Sagcl= 22.97 //standard entropy of formation E.U

//CALCULATIONS
dS= Scl+Sag-Sagcl

//RESULTS
mprintf("Entropy change = %.2f E.U",dS)
