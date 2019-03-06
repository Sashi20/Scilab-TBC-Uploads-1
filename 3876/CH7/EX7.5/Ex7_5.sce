//Windows 10
// Scilab 6.0.0

//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
m= 0.01 //Molarity
CB= 235 //pressure in mm
R= 426.3 //resistance in ohms
M= 265
C= 0.448  //cell constant

//CALCULATIONS
k= M*C/(R*CB)
A= k*1000/m

//RESULTS
mprintf("Equivalent conductance= %.1f mhos",A)
