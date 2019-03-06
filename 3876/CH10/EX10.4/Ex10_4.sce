//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
E= 0.763 //voltage in v
R= 8.31 //in electrical unit J/mol K
T= 25 //temperature in Celsius
F= 96500 //charge in coloums
M= 0.1 //ion activity in m
M1= 0.01 //ion activity in m

//CALCULATIONS
E_cell= E-(R*(273+T)*2.3*log10(M)/(2*F))+R*(273+T)*2.3*log10(M1)/F

//RESULTS
mprintf("Oxidation potential of copper electrode = %.2f v",E_cell)
