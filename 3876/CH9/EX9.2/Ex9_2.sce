//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
Ka= 1.8*10**-5  //ionization constant
C= 0.2 //Molarity of solution
T= 25 //temperature in Celsius

//CALCULATIONS
x= sqrt(C*Ka)
a= x/C
C1= a*C

//RESULTS
mprintf("Hydronium-ion concentration = %.2e mole per litre",C1)
