//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
T= 25 //temperature in Celsius
F_Zn2= -35180 //standard free energy cal of Zn2
F_H2=0 //standard free energy cal of H2
F_Zn=0 //standard free energy cal of Zn
F_H=0 //standard free energy cal of H

//CALCULATIONS
F= F_Zn2 + F_H2 - F_Zn - (2 * F_H)

//RESULTS
mprintf("Value of dF = %.2f cal",F)
