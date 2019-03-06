//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
n= 1.31*10**-4 //mole of silver chromate
T= 25 //temperature in Celsius

//CALCULATIONS
N= 2*n
Ksp= N**2*n

//RESULTS
mprintf("Ksp = %.1e",Ksp)
