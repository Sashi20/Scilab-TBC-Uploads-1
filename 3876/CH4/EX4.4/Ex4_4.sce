//Windows 10
// Scilab 6.0.0
//Chapter 4 Solutions Nonelectrolytes

clc;
clear;

//Initialisation of Variables
p= 214 //pressure in mm
M= 112.5 //weight in gms
m= 18 //weight in gms
m1= 10 //weight in gms

//CALCULATIONS
P= 760-p
M1= m1*P*m/(p*M)

//RESULTS
mprintf("Quantity of Water= %.2f gms",M1)
