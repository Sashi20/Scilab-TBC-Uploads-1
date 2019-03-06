//Windows 10
// Scilab 6.0.0
//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
x= 3.33 //no of moles of ester and water
n= 5 //no of moles

//CALCULATIONS
N= x**2/(n-x)**2

//RESULTS
mprintf("Moles of water and ester formed= %.0f",N)
