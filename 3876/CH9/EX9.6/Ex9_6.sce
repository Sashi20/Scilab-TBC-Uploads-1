//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
C= 0.050 //Molarity of solution
K= 2.4*10**-17   //constant
c= 0.1 //Molarity of solution

//CALCULATIONS
c1= K*C/c**2

//RESULTS
mprintf("Concentration of carbonate-ion = %.1e mole per litre",c1)
