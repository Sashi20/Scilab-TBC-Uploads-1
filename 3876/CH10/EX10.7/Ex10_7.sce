//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
R= 8.31 //electrical unit J/mol K
T= 25 //temperature in Celsius
F= 96500 //charge in coloums
c= 0.02 //molar
c1= 0.1 //molar
c2= 1 //molar
c3= 1 //molar
E_cell_0= 1.486 //voltage

//CALCULATIONS
E_cell= E_cell_0-R*(273+T)*2.3*log10(c*c1**2/(c2*c3))/(2*F)

//RESULTS
mprintf("Potential of the cell = %.3f v",E_cell)
