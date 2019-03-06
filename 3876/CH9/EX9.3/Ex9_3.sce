//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
K= 1.8*10**-5  //ionization constant
V= 500 //volume in ml
c1= 0.3 //Molarity of solution
c2= 0.2 //Molarity of solution

//CALCULATIONS
x= V*c1/1000
y= V*c2/1000
C= K*y/x

//RESULTS
mprintf("Hydronium-ion concentration = %.2e mole per litre",C)
