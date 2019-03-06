//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
Ka= 1.8*10**-5  //given
a= 0.1 //concentration in mole per liter

//CALCULATIONS
pH= -log10(Ka)

//RESULTS
mprintf("pH of a buffer solution = %.2f",pH)
