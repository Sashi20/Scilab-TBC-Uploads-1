//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
t= 20 //time for diffusion in min
t1= 19.4 //time for diffusion in min
M= 32 //weight in gms

//CALCULATIONS
x= M*t1**2/t**2

//RESULTS
mprintf("Molecular Weight of Ethane = %.1f gms",x)
