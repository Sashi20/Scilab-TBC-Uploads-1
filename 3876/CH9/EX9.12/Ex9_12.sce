//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
kw= 10**-14  //from hydrolysis constant expression
Ka= 1.8*10**-5  //given

//CALCULATIONS
Kb= Ka
B= sqrt(kw/(Ka*Kb))

//RESULTS
mprintf("Degree of Hydrolysis = %.2e",B)
