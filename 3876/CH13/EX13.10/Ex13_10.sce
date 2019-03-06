//Windows 10
// Scilab 6.0.0
//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
dF_Ag_plus= 18430 //cal - free energy of formation
dF_Cl_minus= -31350 //cal - free energy of formation
dF_AgCl= 26224 //cal - free energy of formation
R= 1.99 //cal/mole K
T= 25 //temperature in Celsius

//CALCULATIONS
dF= dF_Ag_plus+dF_Cl_minus+dF_AgCl
Ksp= 10**(-dF/(R*(273+T)*2.303))

//RESULTS
mprintf("Solubility product = %.2e",Ksp)

//The difference in the solution compared to textbook is due to round off error
