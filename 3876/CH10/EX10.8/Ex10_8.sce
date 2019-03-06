//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
R= 8.31 //electrical unit J/mol K
T= 25 //temperature in Celsius
F= 96500 //charge in coloums
c= 0.08 //molar
c1= 0.04 //molar

//CALCULATIONS
E= R*(T+273)*log(c/c1)/(2*F)
E1= 2*E

//RESULTS
mprintf("Potential of the cell = %.4f v",E)
mprintf("\nPotential of the cell = %.4f v",E1)
