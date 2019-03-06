//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.1 //Molarity of solution
Kb= 1.8*10**-5  //given
Kw= 10**-14  //from hydrolysis constant expression

//CALCULATIONS
C= sqrt(c*Kw/Kb)

//RESULTS
mprintf("Concentration of hydronium ion = %.2e mol per litre",C)
