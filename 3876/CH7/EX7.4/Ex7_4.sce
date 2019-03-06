//Windows 10
// Scilab 6.0.0
//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
L= 0.025 //resistance in ohms
k= 0.0112 //resistance in ohms

//CALCULATIONS
C= k/L

//RESULTS
mprintf("Cell constant= %.3f",C)
