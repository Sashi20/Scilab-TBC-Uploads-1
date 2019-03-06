//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.1 //Molarity of solution
p= 1.34 //per cent ionized
T= 25 //temperature in Celsius

//CALCULATIONS
C1= c*p/100
C2= c*p/100
C3= c-C1
Ka= C1*C2/C3

//RESULTS
mprintf("Ionization constant = %.2e",Ka)
