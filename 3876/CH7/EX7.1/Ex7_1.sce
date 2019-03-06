//Windows 10
// Scilab 6.0.0
//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
R= 10 //resistance in ohms
V= 5 //potential in v
t= 20 //time in min

//CALCULATIONS
I= V/R
Q= I*t*60
E= Q*V

//RESULTS
mprintf("Current= %.2f amp",I)
mprintf("\nColoumbs of electricity that will pass= %.0f coloumbs",Q)
mprintf("\nEnergy expended= %.0f joules",E)
