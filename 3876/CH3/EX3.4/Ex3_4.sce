//Windows 10
// Scilab 6.0.0
//Chapter 3 Liquids

clc;
clear;

//Initialisation of Variables
n2= 10.05*10**-3 //absolute viscosity of water in poise
d1= 0.879 //density in gms cm^-3
t= 88 //time of flow in sec
d2= 1 //density in gms cm^-3
t1= 120 //time of flow in sec

//Calculations
n1= d1*t/(d2*t1)

//Results
mprintf("Relative Viscosity= %.3f",n1);

//The difference in the solution compared to textbook is due to round off error
